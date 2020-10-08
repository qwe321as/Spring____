package sample3;

public class CircleImpl implements Circle{

	private double radius; // ������
	private Point point;
	
	public CircleImpl() {
		System.out.println("CircleImpl() ������");
	}
	
	public CircleImpl(double radius, Point point) {
		super();
		System.out.println("CircleImpl(double radius, Point point)");
		this.radius = radius;
		this.point = point;
	}
 
	@Override
	public void display() {
		System.out.println("���� �߽� : " + point.getXpos() +"," + point.getYpos());
		System.out.println("���� ���� : " + getArea());
	}

	@Override
	public double getArea() {
		return Math.PI * Math.pow(radius, 2.0); // 3.14 * radius�� 2.0��
	}

}







