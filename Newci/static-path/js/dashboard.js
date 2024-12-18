document.addEventListener("DOMContentLoaded", function () {
    const statusButtons = document.querySelectorAll(".status-btn");
    const infoButtons = document.querySelectorAll(".info-btn");
    const paymentStatusButtons = document.querySelectorAll(".payment-status-btn");
    // Struk functionality
    const strukContainer = document.querySelector('.struk-container');
    const closeStrukBtn = document.querySelector('.close-struk');

    if (strukContainer && closeStrukBtn) {
        closeStrukBtn.addEventListener('click', () => {
            // Remove struk from URL to prevent re-showing on refresh
            if (window.history.replaceState) {
                window.history.replaceState(null, null, window.location.pathname);
            }
            strukContainer.style.display = 'none';
        });
    }
    
    statusButtons.forEach(button => {
        button.addEventListener('click', async (e) => {
            const id = e.target.dataset.id;
            const currentStatus = e.target.dataset.status;
            const newStatus = currentStatus === 'Tersedia' ? 'Tidak Tersedia' : 'Tersedia';

            try {
                const response = await fetch('/update-status', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ 
                        id: id, 
                        status: newStatus 
                    })
                });

                // Jika server menggunakan redirect, maka halaman akan otomatis reload
                if (response.redirected) {
                    window.location.href = response.url;
                }
            } catch (error) {
                console.error('Error updating status:', error);
            }
        });
    });

    function updateTotalHargaCell(button) {
        const row = button.closest("tr");
        const status = row.querySelector(".status-btn").getAttribute("data-status");
        const statusPembayaran = row.querySelector(".payment-status-btn").getAttribute("data-statusP");
        const totalHargaCell = row.querySelector(".total-harga-cell");

        if (status === "Tersedia" && statusPembayaran === "Belum Lunas") {
            totalHargaCell.style.display = "";
        } else {
            totalHargaCell.style.display = "none";
        }
    }

    statusButtons.forEach(button => {
        button.addEventListener("click", function () {
            const id = button.getAttribute("data-id");
            let status = button.getAttribute("data-status");

            if (status === "Digunakan") {
                status = "Tersedia";

                fetch("/update-status", {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json"
                    },
                    body: JSON.stringify({ id, status })
                }).then(response => {
                    if (response.ok) {
                        button.setAttribute("data-status", status);
                        button.textContent = status;
                        button.style.backgroundColor = "#4CAF50";
                        button.disabled = true;
                        updateTotalHargaCell(button);

                        // Re-enable buttons
                        const row = button.closest("tr");
                        row.querySelector(".info-btn").disabled = false;
                        row.querySelector(".payment-status-btn").disabled = false;
                    } else {
                        console.error("Failed to update status");
                    }
                }).catch(error => {
                    console.error("Error:", error);
                });
            }
        });
    });

    infoButtons.forEach(button => {
        button.addEventListener("click", function () {
            const idM = button.getAttribute("data-id");
            window.location.href = `/pemesan?idM=${idM}`;
        });
    });

    paymentStatusButtons.forEach(button => {
        button.addEventListener("click", function () {
            const id = button.getAttribute("data-id");
            let statusPembayaran = button.getAttribute("data-statusP");

            if (statusPembayaran === "Belum Lunas") {
                statusPembayaran = "Lunas";

                fetch("/update-payment-status", {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json"
                    },
                    body: JSON.stringify({ id, statusPembayaran })
                }).then(response => {
                    if (response.ok) {
                        button.setAttribute("data-statusP", statusPembayaran);
                        button.textContent = statusPembayaran;
                        button.style.backgroundColor = "#4CAF50";
                        updateTotalHargaCell(button);
                    } else {
                        console.error("Failed to update payment status");
                    }
                }).catch(error => {
                    console.error("Error:", error);
                });
            }
        });
    });

    // Initial check for all rows
    document.querySelectorAll("tr").forEach(row => {
        const statusButton = row.querySelector(".status-btn");
        if (statusButton) {
            updateTotalHargaCell(statusButton);

            // Disable buttons if status is "Digunakan"
            if (statusButton.getAttribute("data-status") === "Digunakan") {
                row.querySelector(".info-btn").disabled = true;
                row.querySelector(".payment-status-btn").disabled = true;
            }
        }
    });
    document.querySelector('.logout').addEventListener('click', function(event) {
        // Konfirmasi logout
        if (confirm('Apakah Anda yakin ingin logout?')) {
            // Akan otomatis redirect ke halaman login karena href="/logout"
            return true;
        } else {
            event.preventDefault(); // Batalkan logout jika tidak dikonfirmasi
        }
    });

    
    
});
