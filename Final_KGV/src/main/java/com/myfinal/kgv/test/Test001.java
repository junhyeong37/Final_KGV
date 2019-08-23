package com.myfinal.kgv.test;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Test001 {
	public static void main(String[] args) {
		try (InputStream in = Main.class.getResourceAsStream("/mybatis-config.xml")) {
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
			try (SqlSession session = factory.openSession()) {
				List<Map<String, Object>> result = session.selectList("sample.mybatis.selectTest");
				System.out.println(result);
			}
		}

	}
}
