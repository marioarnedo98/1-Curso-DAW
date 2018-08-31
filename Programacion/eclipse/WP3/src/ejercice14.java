
public class ejercice14 {
	public static void main(String[] args) {
		int n =1000;
		int a = 0;
		int m = n;
		System.out.println(n);
		int cifras = 0;
		while (n != 0) {
			n = n / 10;
			cifras++;
		}
		int b = (int) (Math.pow(10, cifras) / 10);
		while (b >= 1) {
			a = m / b;
			a = a * b;
			if (a == 3000) {
				System.out.print("MMM");
			} else {
				if (a == 2000) {
					System.out.print("MM");
				} else {
					if (a == 1000) {
						System.out.print("M");
					} else {
						if (a == 900) {
							System.out.print("CM");
						} else {
							if (a == 800) {
								System.out.print("DCCC");
							} else {
								if (a == 700) {
									System.out.print("DCC");
								} else {
									if (a == 600) {
										System.out.print("DC");
									} else {
										if (a == 500) {
											System.out.print("D");
										} else {
											if (a == 400) {
												System.out.print("CD");
											} else {
												if (a == 300) {
													System.out.print("CCD");
												} else {
													if (a == 200) {
														System.out.print("CCCD");
													} else {
														if (a == 100) {
															System.out.print("D");
														} else {
															if (a == 90) {
																System.out.print("XC");
															} else {
																if (a == 80) {
																	System.out.print("LXXX");
																} else {
																	if (a == 70) {
																		System.out.print("LXX");
																	} else {
																		if (a == 60) {
																			System.out.print("LX");
																		} else {
																			if (a == 50) {
																				System.out.print("L");
																			} else {
																				if (a == 40) {
																					System.out.print("XL");
																				} else {
																					if (a == 30) {
																						System.out.print("XXL");
																					} else {
																						if (a == 20) {
																							System.out.print("XXXL");
																						} else {
																							if (a == 10) {
																								System.out.print("X");
																							} else {
																								if (a == 9) {
																									System.out.print(
																											"IX");
																								} else {
																									if (a == 8) {
																										System.out
																												.print("VIII");
																									} else {
																										if (a == 6) {
																											System.out
																													.print("VI");
																										} else {
																											if (a == 5) {
																												System.out
																														.print("V");
																											} else {
																												if (a == 4) {
																													System.out
																															.print("IV");
																												} else {
																													if (a == 3) {
																														System.out
																																.print("III");
																													} else {
																														if (a == 2) {
																															System.out
																																	.print("II");
																														} else {
																															System.out
																																	.print("I");

																															if (a == 0) {
																																System.out
																																		.println(
																																				" ");

																															
																																
																															}
																														}
																													}
																												}
																											}
																										}
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}

			m = m % b;
			b = b / 10;
		}
		System.out.println(b);
	}

}