import createElement from '../utils/createElement';

/**
   * Icon for PlayButton with a fragment of a Arc, representing de percent of the podcast listen.
   * @constructor
   * @param {!number} angle - angle from 0 to 359.
   * @param {!number} size - The size of the element
   * @param {!number} radius - The radius of the circunference
   */
export default class ArcIcon {
  constructor(angle, size, radius) {
    this.angle = angle;
    this.size = size;
    this.radius = radius;
  }

  /**
 *
 * @param {!number} centerX centro de la circunferencia en X
 * @param {!number} centerY centro de la circunferencia en Y
 * @param {!number} radius radio de la circunferencia
 * @param {!number} angleInDegrees angulo en grados
 * @returns {{x: number, y: number}} coordenates
 */
  static polarToCartesian(centerX, centerY, radius, angleInDegrees) {
    /** @type {(number)} */
    const angleInRadians = ((angleInDegrees - 90) * Math.PI) / 180.0;

    return {
      x: centerX + (radius * Math.cos(angleInRadians)),
      y: centerY + (radius * Math.sin(angleInRadians)),
    };
  }

  /**
       *
       * @param {!number} x - posición en X respecto el centro
       * @param {!number} y - posicion en Y respecto el centro
       * @param {!number} radius - radio de la circunferencia
       * @param {!number} startAngle - Angulo inicial del arco
       * @param {!number} endAngle - Angulo final del arco
       * @returns {Element} arc - <path> del svg que representa el arco
       */

  describeArc(x, y, radius, startAngle, endAngle) {
    const start = this.polarToCartesian(x, y, radius, endAngle);
    const end = this.polarToCartesian(x, y, radius, startAngle);

    /** @type {string} */
    const largeArcFlag = endAngle - startAngle <= 180 ? '0' : '1';

    /** @type {string} */
    const d = `M ${start.x} ${start.y} A ${radius} ${radius} 0 ${largeArcFlag} 0 ${end.x} ${end.y}`;

    /** @type {Element} */
    const output = (
      <path
        id="arc1"
        fill="none"
        stroke="#0078D4"
        strokeWidth="1.82"
        d={d}
      />
    );

    return output;
  }

  /**
       *
       * @returns {Element}
       */
  render() {
    return this.describeArc(this.size / 2, this.size / 2, 9.09, 0, this.angle);
  }
}
