require 'rails_helper'

RSpec.feature "SearchTweets", type: :feature do
  # before(:each) do
  #   # 创建一些示例数据
  #   Tweet.create!(text: "First tweet")
  #   Tweet.create!(text: "Second tweet")
  #   Tweet.create!(text: "Searching for tweets")
  # end

  scenario "用户能够搜索到相关的推文" do
    visit root_path  # 假设首页有搜索框

    fill_in "keyword", with: "text2"  # 填写搜索内容
    click_button "commit"  # 提交搜索表单
    expect(page).to have_content("text2")  # 检查搜索结果
    expect(page).not_to have_content("Nice")  # 确保其它不相关内容没有显示
    # expect(page).not_to have_content("Second tweet")
  end
end
