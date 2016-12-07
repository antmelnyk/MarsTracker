require 'spec_helper'

describe PagesController, :type => :controller do
  it "redirects to 404 page if page does't exist" do
    visit('/pages/test')
    expect(response.status).to eq(200)
  end

  it "renders mars tracker page" do
    visit('pages/tracker')
    expect(response).to render_template(:tracker)
  end
end
