class CounterController < ApplicationController
  def index
    @visit = Counter.all.count
    @site1_views = Counter.where(site_name: "site1")
    @site2_views = Counter.where(site_name: "site2")
    @site1_chart = Counter.where(site_name: "site1").group_by_hour(:created_at, time_zone: "Tokyo").count
    @site2_chart = Counter.where(site_name: "site2").group_by_hour(:created_at, time_zone: "Tokyo").count
  end

  def site1
    Counter.create(site_name: "site1")
    @visit = Counter.where(site_name: "site1").count
  end

  def site2
    Counter.create(site_name: "site2")
    @visit = Counter.where(site_name: "site2").count
  end
end
