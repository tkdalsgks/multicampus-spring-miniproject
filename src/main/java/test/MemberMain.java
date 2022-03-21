package test;

import java.io.IOException;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MemberMain {
	
	public static void main(String[] args) throws IOException {
		ApplicationContext factory = new ClassPathXmlApplicationContext("com/commu/team3/spring-mybatis.xml");
		
		// 전체 조회
		MemberService service = (MemberServiceImpl)factory.getBean("commuservice");
		List<MemberDTO> list = service.memberlist();
		for(MemberDTO dto : list) {
			System.out.println(dto.getUserId() + " : " + dto.getUserName());
		}
	}

}
