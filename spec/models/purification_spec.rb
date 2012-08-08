require 'spec_helper'

describe Purification do
  pending "add some examples to (or delete) #{__FILE__}"
end
# == Schema Information
#
# Table name: purifications
#
#  id                  :integer         not null, primary key
#  project_id          :integer
#  lysis               :string(255)
#  lysis_buffer        :string(255)
#  clarification       :string(255)
#  preparation_extract :string(255)
#  refolding_mode      :string(255)
#  refolding_buffer    :string(255)
#  presence_of         :string(255)
#  chromatography      :string(255)
#  endotoxin           :string(255)
#  final_buffer        :string(255)
#  concentration       :string(255)
#  final_filtration    :string(255)
#  final_productivity  :string(255)
#  created_at          :datetime        not null
#  updated_at          :datetime        not null
#  inclusion_buffer    :string(255)
#  resins              :string(255)
#  chromato_resins     :string(255)
#  status              :string(255)
#

