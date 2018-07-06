# Builds a hash containing the information for the tables in table#show
class TableHashBuilder
  def initialize(column_name, relation_object)
    @column_name = column_name
    @relation_object = relation_object
  end

  def build
    @build ||= build_hash
  end

  private

  def build_hash
    {
      table_name: @column_name.humanize,
      data: build_rel_object_hash
    }
  end

  def build_rel_object_hash
    @relation_object.map do |report_group|
      count = report_group.count
      next if count.zero?
      {
        count: count,
        value: report_group.public_send(@column_name)
      }
    end.compact
  end
end
