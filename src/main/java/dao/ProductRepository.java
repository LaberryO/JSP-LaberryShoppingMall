package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	// 싱글톤 객체 생성
	private static ProductRepository instance = new ProductRepository();
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product scs = new Product("SCS", "신 창 섭", 700000);
		scs.setDescription("정상화의 신입니다.");
		scs.setCategory("신");
		scs.setCondition("중고");
		scs.setFileName("01_scs.png");
		
		Product phone = new Product("JE001", "정전자 1호폰", 500000);
		phone.setDescription("1번째로 출시된 휴대전화");
		phone.setCategory("스마트폰");
		phone.setCondition("신규");
		phone.setFileName("02_phone.png");
		
		
		listOfProducts.add(scs);
		listOfProducts.add(phone);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
		
	}
	
	//하나의 제품에 대한 다양한 정보를 제품
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
