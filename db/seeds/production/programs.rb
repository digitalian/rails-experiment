staff_members = StaffMember.order(:id)

20.times do |n|
  t = (18 - n).weeks.ago.midnight
  Program.create!(
      title: "プログラム NO.#{n + 1}",
      description: "会員向けプログラムです。"*10,
      application_start_time: t,
      application_end_time: t.advance(days: 7),
      registrant: staff_members.sample
  )
end