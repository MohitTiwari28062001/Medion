function showSideBar() {
    let sideBar = document.querySelector('.sideBar')
    sideBar.style.display = "flex"
}
function hideSideBar() {
    let sideBar = document.querySelector('.sideBar')
    sideBar.style.display = "none"
}
function logOutUser() {
    return confirm('Are you sure you want to Log Out?');
}