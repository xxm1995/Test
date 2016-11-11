package cn.xxm.ajax.test;

import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;



public class test01 {
	public static void main(String[] args) {
		int i = 1;
		i = getNum(i);
		System.out.println(i);
	}
	public static int getNum(int i){
		i++;
		++i;
		return i++;
	}
}