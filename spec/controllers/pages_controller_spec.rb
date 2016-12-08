require 'spec_helper'

describe PagesController, :type => :controller do
  it "redirects to 404 page if page does't exist" do
    get :show, { controller: 'pages', page: 'not_existing_page' }
    expect(response.status).to eq(404)
  end

  it "renders mars tracker page" do
    visit('pages/tracker')
    expect(response).to render_template(:tracker)
  end
end
