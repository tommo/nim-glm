import unittest
import glm.mat
import glm.vec
import math

proc compare*[N,M,T](a,b: Mat[N, M, T]): bool =
  for i in 0 ..< N:
    for j in 0 ..< M:
      if abs(a[i][j]-b[i][j]) > 0.001: 
        return false;
  return true

suite "Matrix multiplication with major 4":
  setup:
    let p = mat4(vec4(7.89367, 1.10929, 1.67928, 6.69293),
            vec4(5.94461, 3.11095, 2.93005, 0.490001),
            vec4(7.85331, 4.76593, 5.86725, 7.40407),
            vec4(3.28632, 2.14797, 2.56676, 6.20656));
    let q = mat4(vec4(4.01928, 4.41937, 2.15714, 0.183548),
            vec4(4.56231, 4.36833, 7.72004, 8.40577),
            vec4(4.95951, 2.10983, 4.37292, 1.89928),
            vec4(8.57785, 3.51489, 6.81346, 3.38207));
    let pxq = mat4(vec4(75.5422, 28.882, 32.8261, 46.177),
            vec4(150.233, 73.4991, 87.3318, 142.006),
            vec4(92.2744, 36.9858, 45.0424, 78.3929),
            vec4(153.228, 60.187, 73.3607, 130.572));

  test "mat4 * mat4":
    check(compare(pxq,p*q));


    
suite "Matrix multiplication with major 4":
  setup:
    let p = mat4x3(vec3(0.39522, 5.39296, 7.81726),
            vec3(1.25305, 2.28293, 6.87896),
            vec3(8.04886, 2.79586, 5.38916),
            vec3(3.8848, 5.40689, 7.38901));
    let q = mat4(vec4(3.14061, 3.61773, 2.17285, 6.66201),
            vec4(7.23764, 2.68321, 8.06908, 1.77431),
            vec4(7.5259, 5.96595, 1.16839, 2.25085),
            vec4(3.31407, 3.5499, 1.71381, 7.73247));
    let pxq = mat4x3(vec3(49.144, 67.2919, 110.373),
            vec3(78.0624, 77.3114, 131.632),
            vec3(28.5984, 69.6435, 122.8),
            vec3(49.5913, 72.577, 116.698));


  test "mat4x3 * mat4":
    check(compare(pxq, p*q));

suite "Matrix multiplication with major 4":
  setup:
    let p = mat4x3(vec3(2.15555, 7.54407, 3.83892),
            vec3(3.32702, 9.99935, 8.16517),
            vec3(7.07694, 2.23305, 7.31887),
            vec3(0.137593, 7.84212, 7.73943));
    let q = mat3x4(vec4(3.44239, 2.05092, 2.63158, 7.4785),
            vec4(0.915696, 4.32996, 2.87187, 5.38179),
            vec4(7.42304, 6.33226, 8.84191, 6.76446));
    let pxq = mat3x3(vec3(33.8962, 111.001, 107.101),
            vec3(37.4443, 98.8226, 101.541),
            vec3(100.573, 192.111, 197.266));

  test "mat4x3 * mat3x4":
    check(compare(pxq,p*q));

suite "Matrix multiplication with major 4":
  setup:
    let p = mat4x3(vec3(3.50671, 0.240651, 2.61703),
            vec3(8.07863, 8.86556, 8.29965),
            vec3(8.58817, 2.30592, 8.51875),
            vec3(0.28128, 9.59342, 7.80658));
    let q = mat2x4(vec4(2.36584, 2.49404, 6.49077, 5.48972),
            vec4(0.15524, 9.07618, 4.34596, 3.70866));
    let pxq = mat2x3(vec3(85.7327, 90.3127, 125.04),
            vec3(112.234, 126.103, 141.709));

  test "mat4x3 * mat2x4":
    check(compare(pxq,p*q));

suite "Matrix multiplication with major 4":
  setup:
    let p = mat4x2(vec2(2.91669, 6.91374),
            vec2(0.625142, 6.84815),
            vec2(0.16436, 2.94888),
            vec2(3.19676, 6.36922));
    let q = mat4x4(vec4(4.25223, 9.85366, 5.80329, 1.69523),
            vec4(6.68758, 7.18458, 1.42712, 6.99035),
            vec4(3.37755, 4.44201, 8.9562, 5.75746),
            vec4(9.86689, 0.71892, 0.812046, 1.34952));
    let pxq = mat4x2(vec2(24.9354, 124.789),
            vec2(46.578, 144.169),
            vec2(32.5054, 116.852),
            vec2(33.6756, 84.1304));

  test "mat4x2 * mat4":
    check(compare(pxq,p*q));

suite "Matrix multiplication with major 4":
  setup:
    let p = mat4x2(vec2(1.8357, 1.16728),
            vec2(1.46547, 8.71975),
            vec2(0.729659, 4.20488),
            vec2(5.88202, 3.78859));
    let q = mat3x4(vec4(9.04853, 1.59807, 9.1932, 3.73143),
            vec4(8.12612, 2.5004, 8.7532, 6.40991),
            vec4(6.13215, 0.0467961, 1.90477, 3.42501));
    let pxq = mat3x2(vec2(47.6085, 77.29),
            vec2(62.6714, 92.3789),
            vec2(32.8611, 28.5512));


  test "mat4x2 * mat3x4":
    check(compare(pxq,p*q));

suite "Matrix multiplication with major 4":
  setup:
    let p = mat4x2(vec2(2.63343, 1.16297),
            vec2(7.55765, 1.68212),
            vec2(3.34142, 4.10288),
            vec2(5.08689, 2.25272));
    let q = mat2x4(vec4(9.47493, 6.21652, 2.58241, 7.0071),
            vec4(3.92806, 5.49965, 6.31272, 9.03252));
    let pxq = mat2x2(vec2(116.207, 47.8563),
            vec2(118.95, 60.0673));

  test "mat4x2 * mat2x4":
    check(compare(pxq,p*q));






