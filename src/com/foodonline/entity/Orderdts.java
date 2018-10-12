package com.foodonline.entity;

public class Orderdts implements java.io.Serializable {



	private Integer odid;
	private Meal meal;
	private Orders orders;
	private double mealPrice;
	private Integer mealCount;

	public Orderdts() {
	}


	public Orderdts(Meal meal, Orders orders, int mealPrice,
			Integer mealCount) {
		this.meal = meal;
		this.orders = orders;
		this.mealPrice = mealPrice;
		this.mealCount = mealCount;
	}


	public Integer getOdid() {
		return this.odid;
	}

	public void setOdid(Integer odid) {
		this.odid = odid;
	}

	public Meal getMeal() {
		return this.meal;
	}

	public void setMeal(Meal meal) {
		this.meal = meal;
	}

	public Orders getOrders() {
		return this.orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public double getMealPrice() {
		return this.mealPrice;
	}

	public void setMealPrice(double mealPrice) {
		this.mealPrice = mealPrice;
	}

	public Integer getMealCount() {
		return this.mealCount;
	}

	public void setMealCount(Integer mealCount) {
		this.mealCount = mealCount;
	}

}