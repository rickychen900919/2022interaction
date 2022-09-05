function setup() {
    initializeFields();
    createCanvas(500, 500);
}

function draw() {
    background(color(0xF0, 0x95, 0x0C));
    fill(color(0x1B, 0x8B, 0xDE));
    rect(100, 100, 100, 150);
    rect(mouseX, mouseY, 100, 150);
}

function initializeFields() {
}
