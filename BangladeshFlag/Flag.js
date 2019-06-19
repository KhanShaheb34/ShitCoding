function Flag(ctx, x, y, widthOfFlag) {
  measure = widthOfFlag / 1000;
  flagWidth = 1000 * measure;
  flagHeight = 600 * measure;
  circleRadius = 200 * measure;
  circleX = x + 450 * measure;
  circleY = y + 300 * measure;
  bambooX = x - 40 * measure;
  bambooY = y - 10 * measure;
  bambooWidth = 40 * measure;
  bambooHeight = 1400 * measure;
  plateWidth = 200 * measure;
  plateHeight = 60 * measure;
  plateX = bambooX - plateWidth / 2 + bambooWidth / 2;
  plateY = bambooY + bambooHeight;
  plate2X = plateX - 30 * measure;
  plate2Y = plateY + plateHeight;
  plate2Width = 260 * measure;
  plate2Height = 70 * measure;

  // Green Part
  ctx.fillStyle = "green";
  ctx.fillRect(x, y, flagWidth, flagHeight);

  // Bamboo
  ctx.fillStyle = "#8c3019";
  ctx.fillRect(bambooX, bambooY, bambooWidth, bambooHeight);

  // Standing Plate
  ctx.fillStyle = "gray";
  ctx.fillRect(plateX, plateY, plateWidth, plateHeight);
  ctx.fillRect(plate2X, plate2Y, plate2Width, plate2Height);

  // Red
  ctx.beginPath();
  ctx.arc(circleX, circleY, circleRadius, 0, Math.PI * 2);
  ctx.fillStyle = "red";
  ctx.fill();
}
