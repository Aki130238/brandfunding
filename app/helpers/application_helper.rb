# frozen_string_literal: true

module ApplicationHelper
  def svg(filename, options={})
    file = File.read(Rails.root.join('app', 'assets', 'images', filename))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    svg['class'] = options[:class] if options[:class].present?
    doc.to_html.html_safe
  end

  def format_date(date)
    date.strftime("%Y-%m-%d (#{%w[日 月 火 水 木 金 土][Time.now.wday]})")
  end

  def sponsor_count(project)
    total_sponsors = 0
    project.project_return.each do |r|
      total_sponsors += r.sponsor_users.count.to_i
    end
    total_sponsors
  end

  def fund_count(project)
    total_funds = 0
    project.project_return.each do |f|
      total_funds += f.sponsor_users.count.to_i * f.return_item_fund.to_i
    end
    total_funds
  end

  def fund_progress(project)
    progress = fund_count(project).to_f / project.project_value.target_fund.to_f * 100
    progress.ceil
  end

  def return_remains(project)
    remains = project.return_item_count.to_i - project.sponsor_users.count.to_i
    if remains > 0
      remains
    else
      0
    end
  end
end
