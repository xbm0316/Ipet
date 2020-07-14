package org.zmh.Service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zmh.Emtity.Order;
import org.zmh.Emtity.Order_Info;
import org.zmh.Emtity.Pet;
import org.zmh.Emtity.Product;
import org.zmh.Emtity.User;

public interface UserService {
//	����û�
	void addUser(User user);
	
//	����û���¼
	Integer findUserId(String name);
	
//	����id�ҵ��û�
	User findUserById(Integer id);
	
//	��������ҵ�����
	List<Pet> findPet(String pet);
	
	String findPetByCate(String category);
	
//	��������ҵ���Ʒ
	List<Product> findProduct(String category,int start);
	
//	����ͼƬ�ҵ���Ʒ��id
	int findProductId(String p_img);
	
//	����id�ҵ���Ʒ����Ϣ
	Product findProductById(int product_id);
	
//	�޸��û�
	void updateUser(User user);
	
//	��Ӷ���
	void addOrder(Order order);
	
//	�ҵ��û�
	User findUser(int id);
	
//	��Ӷ�������
	void addOrderInfo(Order_Info orderinfo);
	
//	�����û�id�ҵ�����
	List<Order> findOrder(int id,int start);
	
//	�ҵ��Ѿ�֧���Ķ���
	List<Order> findPayOrder(@Param("id") int id,@Param("start") int start);
	
//	����
	void pay(Order order);
}
