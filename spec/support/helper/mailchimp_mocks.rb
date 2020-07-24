module MailchimpHelper

  def mock_campaigns
    stub_request(:post, "https://us20.api.mailchimp.com/3.0/campaigns").
    with(
      body: "{\"type\":\"regular\",\"recipients\":{\"list_id\":\"fed1dcab66\"},\"settings\":{\"subject_line\":\"New Article\",\"title\":\"Mailchimp Article\",\"from_name\":\"David\",\"reply_to\":\"davidliamwalsh@yahoo.co.uk\",\"template_id\":18987}}",
      headers: {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'Authorization'=>'Basic YXBpa2V5OmNmMGM4ODhlMjZlZWJiMjhiMmU4Nzg4MGY0MDQ5NzQ4LXVzMjA=',
      'Content-Type'=>'application/json',
      'User-Agent'=>'Faraday v0.15.4'
      }).  
    to_return(status: 200, body: "{
      \"id\": \"1ee6bad80a\",
      \"web_id\": 75519,
      \"type\": \"regular\",
      \"create_time\": \"2019-03-26T14:01:24+00:00\",
      \"archive_url\": \"http://eepurl.com/glU5pL\",
      \"long_archive_url\": \"https://us20.campaign-archive.com/?u=add0242531d662945b111ce32&id=1ee6bad80a\",
      \"status\": \"save\",
      \"emails_sent\": 0,
      \"send_time\": \"\",
      \"content_type\": \"template\",
      \"needs_block_refresh\": true,
      \"has_logo_merge_tag\": false,
      \"resendable\": false,
      \"recipients\": {
        \"list_id\": \"fed1dcab66\",
        \"list_is_active\": true,
        \"list_name\": \"blogger\",
        \"segment_text\": \"\",
        \"recipient_count\": 1
      },
      \"settings\": {
        \"subject_line\": \"New Article\",
        \"title\": \"\",
        \"from_name\": \"David\",
        \"reply_to\": \"davidliamwalsh@yahoo.co.uk\",
        \"use_conversation\": false,
        \"to_name\": \"\",
        \"folder_id\": \"\",
        \"authenticate\": true,
        \"auto_footer\": false,
        \"inline_css\": false,
        \"auto_tweet\": false,
        \"fb_comments\": true,
        \"timewarp\": false,
        \"template_id\": 18987,
        \"drag_and_drop\": true
      },
      \"tracking\": {
        \"opens\": true,
        \"html_clicks\": true,
        \"text_clicks\": false,
        \"goal_tracking\": false,
        \"ecomm360\": false,
        \"google_analytics\": \"\",
        \"clicktale\": \"N\"
      },
      \"delivery_status\": {
        \"enabled\": false
      },
      \"_links\": [
        {
          \"rel\": \"parent\",
          \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns\",
          \"method\": \"GET\",
          \"targetSchema\": \"https://us20.api.mailchimp.com/schema/3.0/Definitions/Campaigns/CollectionResponse.json\",
          \"schema\": \"https://us20.api.mailchimp.com/schema/3.0/CollectionLinks/Campaigns.json\"
        },
        {
          \"rel\": \"self\",
          \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/1ee6bad80a\",
          \"method\": \"GET\",
          \"targetSchema\": \"https://us20.api.mailchimp.com/schema/3.0/Definitions/Campaigns/Response.json\"
        },
        {
          \"rel\": \"delete\",
          \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/1ee6bad80a\",
          \"method\": \"DELETE\"
        },
        {
          \"rel\": \"send\",
          \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/1ee6bad80a/actions/send\",
          \"method\": \"POST\"
        },
        {
          \"rel\": \"cancel_send\",
          \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/1ee6bad80a/actions/cancel-send\",
          \"method\": \"POST\"
        },
        {
          \"rel\": \"feedback\",
          \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/1ee6bad80a/feedback\",
          \"method\": \"GET\",
          \"targetSchema\": \"https://us20.api.mailchimp.com/schema/3.0/Definitions/Campaigns/Feedback/CollectionResponse.json\"
        },
        {
          \"rel\": \"content\",
          \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/1ee6bad80a/content\",
          \"method\": \"GET\",
          \"targetSchema\": \"https://us20.api.mailchimp.com/schema/3.0/Definitions/Campaigns/Content/Response.json\"
        },
        {
          \"rel\": \"send_checklist\",
          \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/1ee6bad80a/send-checklist\",
          \"method\": \"GET\",
          \"targetSchema\": \"https://us20.api.mailchimp.com/schema/3.0/Definitions/Campaigns/Checklist/Response.json\"
        },
        {
          \"rel\": \"pause\",
          \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/1ee6bad80a/actions/pause\",
          \"method\": \"POST\"
        },
        {
          \"rel\": \"resume\",
          \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/1ee6bad80a/actions/resume\",
          \"method\": \"POST\"
        },
        {
          \"rel\": \"replicate\",
          \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/1ee6bad80a/actions/replicate\",
          \"method\": \"POST\"
        },
        {
          \"rel\": \"create_resend\",
          \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/1ee6bad80a/actions/create-resend\",
          \"method\": \"POST\"
        }
      ]
    }", headers: {})

    stub_request(:post, "https://us20.api.mailchimp.com/3.0/campaigns/1ee6bad80a/actions/send").
      with(
        body: "null",
        headers: {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'Authorization'=>'Basic YXBpa2V5OmNmMGM4ODhlMjZlZWJiMjhiMmU4Nzg4MGY0MDQ5NzQ4LXVzMjA=',
      'Content-Type'=>'application/json',
      'User-Agent'=>'Faraday v0.15.4'
        }).
      to_return(status: 200, body: "", headers: {})
  end
end