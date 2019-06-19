class Canvas {
  constructor(canvas) {
    this.canvas = canvas;
    canvas.width = canvas.scrollWidth;
    canvas.height = canvas.scrollHeight;
    this.ctx = canvas.getContext("2d");
  }

  drawFlag(x, y, size) {
    this.x = x;
    this.y = y;
    this.size = size;
    Flag(this.ctx, x, y, size);
  }

  changeFlag(size) {
    this.ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);
    this.size = size;
    Flag(this.ctx, this.x, this.y, size);
  }

  changeX(x) {
    this.ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);
    this.x = x;
    Flag(this.ctx, x, this.y, this.size);
  }

  changeY(y) {
    this.ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);
    this.y = y;
    Flag(this.ctx, this.x, y, this.size);
  }
}
