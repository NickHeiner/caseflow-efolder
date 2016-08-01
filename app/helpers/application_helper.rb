# frozen_string_literal: true
# rubocop:disable Metrics/ModuleLength
module ApplicationHelper
  ALERT_ICON = <<-HTML.freeze
    <svg width="72px" height="72px" class="cf-icon-alert"
      xmlns="http://www.w3.org/2000/svg" viewBox="0 0 72 72">
      <title>alert</title>
      <path d="M36,72 C55.882251,72 72,55.882251 72,36 C72,16.117749 55.882251,0
      36,0 C16.117749,0 0,16.117749 0,36 C0,55.882251 16.117749,72 36,72 Z
      M32.9213867,12.8110352 L42.5498047,12.8110352 L42.5498047,24.315918
      L40.0581055,45.4799805 L35.4746094,45.4799805 L32.9213867,24.315918
      L32.9213867,12.8110352 Z M33.1367188,49.1098633 L42.3037109,49.1098633
      L42.3037109,58 L33.1367188,58 L33.1367188,49.1098633 Z"/>
    </svg>
  HTML

  FAILED_ICON = <<-HTML.freeze
    <svg width="55" height="55" class="cf-icon-missing"
    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 55 55">
      <title>failed</title>
      <path d="M52.6 46.9l-6 6c-.8.8-1.9 1.2-3 1.2s-2.2-.4-3-1.2l-13-13-13
      13c-.8.8-1.9 1.2-3 1.2s-2.2-.4-3-1.2l-6-6c-.8-.8-1.2-1.9-1.2-3s.4-2.2
      1.2-3l13-13-13-13c-.8-.8-1.2-1.9-1.2-3s.4-2.2 1.2-3l6-6c.8-.8 1.9-1.2
      3-1.2s2.2.4 3 1.2l13 13 13-13c.8-.8 1.9-1.2 3-1.2s2.2.4 3 1.2l6 6c.8.8
      1.2 1.9 1.2 3s-.4 2.2-1.2 3l-13 13 13 13c.8.8 1.2 1.9 1.2 3s-.4 2.2-1.2 3z"/>
    </svg>
  HTML

  SUCCESS_ICON = <<-HTML.freeze
    <svg width="55" height="55" class="cf-icon-found"
    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 60 50">
      <title>success</title>
      <path d="M57 13.3L29.9 41.7 24.8 47c-.7.7-1.6 1.1-2.5 1.1-.9 0-1.9-.4-2.5-1.1l-5.1-5.3L1
       27.5c-.7-.7-1-1.7-1-2.7s.4-2 1-2.7l5.1-5.3c.7-.7 1.6-1.1 2.5-1.1.9 0 1.9.4 2.5 1.1l11
       11.6L46.8 2.7c.7-.7 1.6-1.1 2.5-1.1.9 0 1.9.4 2.5 1.1L57 8c.7.7 1 1.7 1 2.7 0 1-.4 1.9-1
       2.6z"/>
    </svg>
  HTML

  SPACER_ICON = <<-HTML.freeze
    <span class="cf-spacer-icon"></span>
  HTML

  PAGE_LOADING_ICON_FRONT = <<-HTML.freeze
    <svg
      width="200"
      height="200"
      version="1.1" xmlns="http://www.w3.org/2000/svg"
      xmlns:xlink="http://www.w3.org/1999/xlink"
      viewBox="0 0 500 500"
      class="ee-icon-loading-front">

      <path
        opacity="1"
        fill="#d6d7d9"
        fill-opacity="1"
        d = "M250.9,469.4c-13.9,0-25.8-8.1-30.9-21l-29.9-75.3c-2.3-5.8-7.9-9.6-14.2-9.6c-0.8,0-1.6,0.1-2.4,0.2
        l-77,12.4c-1.8,0.3-3.7,0.4-5.5,0.4c-12.7,0-24.1-7.2-29.8-18.9c-5.6-11.6-4.1-25,3.9-35.1l50.2-63.4c4.5-5.7,4.4-13.5-0.1-19.1
        l-49.3-60.5c-8.2-10.1-9.8-23.6-4.3-35.3c5.6-11.8,17-19.1,29.9-19.1c1.7,0,3.4,0.1,5.1,0.4l80,11.7c0.7,0.1,1.5,0.2,2.2,0.2
        c6.3,0,12-4,14.2-9.8l27.8-72.9c5-13,17.2-21.5,31.1-21.5c13.9,0,25.8,8.1,30.9,21l29.8,75.2c2.3,5.8,7.9,9.6,14.2,9.6
        c0.8,0,1.6-0.1,2.4-0.2l77.1-12.4c1.8-0.3,3.7-0.4,5.5-0.4c12.7,0,24.1,7.2,29.8,18.9c5.6,11.6,4.1,25-3.9,35.1l-50.2,63.5
        c-4.5,5.7-4.4,13.5,0.1,19.1L437,323c8.2,10.1,9.8,23.6,4.3,35.3c-5.6,11.8-17,19.1-29.9,19.1c0,0,0,0,0,0c-1.7,0-3.4-0.1-5.1-0.4
        l-80.1-11.8c-0.7-0.1-1.5-0.2-2.2-0.2c-6.3,0-12,4-14.2,9.8l-27.8,73C277.1,460.9,264.8,469.4,250.9,469.4z M175.9,345.4
        c13.7,0,25.9,8.2,30.9,21l29.9,75.3c2.4,6,7.7,9.6,14.2,9.6c5.1,0,11.5-2.6,14.3-9.8l27.8-73c4.9-12.8,17.4-21.5,31.1-21.5
        c1.6,0,3.2,0.1,4.8,0.4l80.1,11.8c0.8,0.1,1.6,0.2,2.4,0.2h0c6.9,0,11.6-4.5,13.6-8.8c2.6-5.4,1.8-11.4-2-16.1l-49.3-60.5
        c-9.9-12.2-10.1-29.3-0.3-41.7l50.2-63.5c5.4-6.8,3-13.5,1.8-16c-2-4.2-6.7-8.7-13.5-8.7c-0.9,0-1.8,0.1-2.7,0.2l-77.1,12.4
        c-1.8,0.3-3.5,0.4-5.3,0.4c-13.7,0-25.9-8.2-30.9-21L266,60.9c-2.4-6-7.7-9.6-14.2-9.6c-5.1,0-11.5,2.6-14.3,9.8L209.8,134
        c-4.9,12.8-17.4,21.5-31.1,21.5c-1.6,0-3.2-0.1-4.8-0.4l-80-11.7c-0.8-0.1-1.6-0.2-2.4-0.2c-6.9,0-11.6,4.5-13.6,8.8
        c-2.6,5.4-1.8,11.4,2,16.1l49.3,60.5c9.9,12.2,10.1,29.3,0.3,41.7l-50.2,63.4c-5.4,6.8-3,13.5-1.8,16c2,4.2,6.7,8.7,13.5,8.7
        c0.9,0,1.8-0.1,2.7-0.2l77-12.4C172.3,345.5,174.1,345.4,175.9,345.4z">
      </path>
    </svg>
  HTML

  PAGE_LOADING_ICON_BACK = <<-HTML.freeze
    <svg
      width="200"
      height="200"
      version="1.1" xmlns="http://www.w3.org/2000/svg"
      xmlns:xlink="http://www.w3.org/1999/xlink"
      viewBox="0 0 500 500"
      class="ee-icon-loading-back">

      <path
        opacity="1"
        fill="#F15A24"
        fill-opacity="1"
        d = "M250.9,469.4c-13.9,0-25.8-8.1-30.9-21l-29.9-75.3c-2.3-5.8-7.9-9.6-14.2-9.6c-0.8,0-1.6,0.1-2.4,0.2
        l-77,12.4c-1.8,0.3-3.7,0.4-5.5,0.4c-12.7,0-24.1-7.2-29.8-18.9c-5.6-11.6-4.1-25,3.9-35.1l50.2-63.4c4.5-5.7,4.4-13.5-0.1-19.1
        l-49.3-60.5c-8.2-10.1-9.8-23.6-4.3-35.3c5.6-11.8,17-19.1,29.9-19.1c1.7,0,3.4,0.1,5.1,0.4l80,11.7c0.7,0.1,1.5,0.2,2.2,0.2
        c6.3,0,12-4,14.2-9.8l27.8-72.9c5-13,17.2-21.5,31.1-21.5c13.9,0,25.8,8.1,30.9,21l29.8,75.2c2.3,5.8,7.9,9.6,14.2,9.6
        c0.8,0,1.6-0.1,2.4-0.2l77.1-12.4c1.8-0.3,3.7-0.4,5.5-0.4c12.7,0,24.1,7.2,29.8,18.9c5.6,11.6,4.1,25-3.9,35.1l-50.2,63.5
        c-4.5,5.7-4.4,13.5,0.1,19.1L437,323c8.2,10.1,9.8,23.6,4.3,35.3c-5.6,11.8-17,19.1-29.9,19.1c0,0,0,0,0,0c-1.7,0-3.4-0.1-5.1-0.4
        l-80.1-11.8c-0.7-0.1-1.5-0.2-2.2-0.2c-6.3,0-12,4-14.2,9.8l-27.8,73C277.1,460.9,264.8,469.4,250.9,469.4z M175.9,345.4
        c13.7,0,25.9,8.2,30.9,21l29.9,75.3c2.4,6,7.7,9.6,14.2,9.6c5.1,0,11.5-2.6,14.3-9.8l27.8-73c4.9-12.8,17.4-21.5,31.1-21.5
        c1.6,0,3.2,0.1,4.8,0.4l80.1,11.8c0.8,0.1,1.6,0.2,2.4,0.2h0c6.9,0,11.6-4.5,13.6-8.8c2.6-5.4,1.8-11.4-2-16.1l-49.3-60.5
        c-9.9-12.2-10.1-29.3-0.3-41.7l50.2-63.5c5.4-6.8,3-13.5,1.8-16c-2-4.2-6.7-8.7-13.5-8.7c-0.9,0-1.8,0.1-2.7,0.2l-77.1,12.4
        c-1.8,0.3-3.5,0.4-5.3,0.4c-13.7,0-25.9-8.2-30.9-21L266,60.9c-2.4-6-7.7-9.6-14.2-9.6c-5.1,0-11.5,2.6-14.3,9.8L209.8,134
        c-4.9,12.8-17.4,21.5-31.1,21.5c-1.6,0-3.2-0.1-4.8-0.4l-80-11.7c-0.8-0.1-1.6-0.2-2.4-0.2c-6.9,0-11.6,4.5-13.6,8.8
        c-2.6,5.4-1.8,11.4,2,16.1l49.3,60.5c9.9,12.2,10.1,29.3,0.3,41.7l-50.2,63.4c-5.4,6.8-3,13.5-1.8,16c2,4.2,6.7,8.7,13.5,8.7
        c0.9,0,1.8-0.1,2.7-0.2l77-12.4C172.3,345.5,174.1,345.4,175.9,345.4z">
      </path>
    </svg>
  HTML

  PROGRESS_ICON = <<-HTML.freeze
    <svg
      width="394"
      height="364"
      version="1.1" xmlns="http://www.w3.org/2000/svg"
      xmlns:xlink="http://www.w3.org/1999/xlink"
      viewBox="0 0 394 364"
      class="ee-icon-progress">

      <path
        fill="#4A4A4A"
        d="M215.729031,0.0786700574 C215.340926,0.041957364 214.947576,0 214.538491,0 C204.070129,0 196.837728,8.48063219
        196.837728,18.9280158 C196.837728,29.2337933 200.855146,37.6147768 216.589157,37.8402976 L216.589157,37.897989
        C291.325712,38.9259444 356.70053,102.764074 356.70053,181.103717 C356.70053,260.08321 291.83969,325.248241 212.860197,
        325.248241 C137.489037,325.248241 74.8991393,268.380279 69.3869907,193.643724 L102.638202,193.643724 L51.2981221,
        108.333914 L0,193.664703 L31.468023,193.664703 C37.022129,288.068772 115.975399,363.109517 212.225592,363.109517
        C312.078873,363.109517 393.350287,281.449997 393.350287,181.575737 C393.350287,82.8710385 313.96171,1.94577275
        215.729031,0.0786700574 Z M232.323169,88.2782938 C232.323169,79.3675986 225.174683,71.7261137 216.279722,71.7261137
        L212.818239,71.7261137 C203.928523,71.7261137 196.942622,79.3675986 196.942622,88.2782938 L196.942622,183.479553
        L150.291278,230.046982 C143.41027,236.933234 143.756418,248.099138 150.270299,254.938188 C156.805158,261.861153
        168.23854,261.861153 175.124793,254.938188 L226.648435,203.414545 C227.036541,202.984482 227.366955,202.554419
        227.755061,202.166314 C230.581938,199.234543 232.323169,195.259083 232.323169,190.874538 L232.323169,88.2782938 Z">
      </path>
    </svg>
  HTML

  def svg_icon(name)
    ({
      spacer: SPACER_ICON,
      success: SUCCESS_ICON,
      failed: FAILED_ICON,
      progress: PROGRESS_ICON,
      page_loading_front: PAGE_LOADING_ICON_FRONT,
      page_loading_back: PAGE_LOADING_ICON_BACK,
      alert: ALERT_ICON
    }[name] || "").html_safe
  end

  def page_loading_indicator(loading_text)
    content_tag :div, class: "ee-page-loading" do
      page_loading_icon + loading_text
    end
  end

  def page_loading_icon
    content_tag :div, class: "ee-page-loading-icon" do
      "#{svg_icon(:page_loading_front)} #{svg_icon(:page_loading_back)}".html_safe
    end
  end

  def format_time_duration_stat(seconds)
    return "?? <span class=\"ee-stat-unit\">sec</span>".html_safe unless seconds
    return "#{format('%.2f', seconds)} <span class=\"ee-stat-unit\">sec</span>".html_safe if seconds < 60
    "#{format('%.2f', seconds / 60)} <span class=\"ee-stat-unit\">min</span>".html_safe
  end
end
