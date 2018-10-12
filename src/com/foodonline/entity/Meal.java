package com.foodonline.entity;

import java.util.HashSet;
import java.util.Set;


public class Meal implements java.io.Serializable {


	private Integer mealId;
	private Mealseries mealseries;
	private String mealName;
	private String mealSummarize;
	private String mealDescription;
	private Double mealPrice;
	private String mealImage;
	private Double mealDiscount;
	
	


	private Set orderdtses = new HashSet(0);

	

	public Meal() {
	}

	public Meal(Mealseries mealseries, String mealName, String mealSummarize,
			String mealDescription, double mealPrice, String mealImage,
			Set orderdtses, double mealDiscount) {
		this.mealseries = mealseries;
		this.mealName = mealName;
		this.mealSummarize = mealSummarize;
		this.mealDescription = mealDescription;
		this.mealPrice = mealPrice;
		this.mealImage = mealImage;
		this.orderdtses = orderdtses;
		this.mealDiscount=mealDiscount;
	}

	public Integer getMealId() {
		return mealId;
	}

	public void setMealId(Integer mealId) {
		this.mealId = mealId;
	}

	public Mealseries getMealseries() {
		return mealseries;
	}

	public void setMealseries(Mealseries mealseries) {
		this.mealseries = mealseries;
	}

	public String getMealName() {
		return mealName;
	}

	public void setMealName(String mealName) {
		this.mealName = mealName;
	}

	public String getMealSummarize() {
		return mealSummarize;
	}

	public void setMealSummarize(String mealSummarize) {
		this.mealSummarize = mealSummarize;
	}

	public String getMealDescription() {
		return mealDescription;
	}

	public void setMealDescription(String mealDescription) {
		this.mealDescription = mealDescription;
	}

	public Double getMealPrice() {
		return mealPrice;
	}

	public void setMealPrice(Double mealPrice) {
		this.mealPrice = mealPrice;
	}

	public String getMealImage() {
		return mealImage;
	}

	public void setMealImage(String mealImage) {
		this.mealImage = mealImage;
	}


	public Double getMealDiscount() {
		return mealDiscount;
	}

	public void setMealDiscount(Double mealDiscount) {
		this.mealDiscount = mealDiscount;
	}

	public Set getOrderdtses() {
		return orderdtses;
	}

	public void setOrderdtses(Set orderdtses) {
		this.orderdtses = orderdtses;
	}



	

}