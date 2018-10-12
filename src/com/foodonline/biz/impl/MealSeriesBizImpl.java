package com.foodonline.biz.impl;

import java.util.List;
import com.foodonline.biz.MealSeriesBiz;
import com.foodonline.dao.MealSeriesDAO;

public class MealSeriesBizImpl implements MealSeriesBiz {

	MealSeriesDAO mealSeriesDAO;
	
	public void setMealSeriesDAO(MealSeriesDAO mealSeriesDAO) {
		this.mealSeriesDAO = mealSeriesDAO;
	}

	@Override
	public List getMealSeries() {
		return mealSeriesDAO.getMealSeries();
	}

}
