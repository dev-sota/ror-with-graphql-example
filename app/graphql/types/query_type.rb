module Types
  class QueryType < Types::BaseObject
    field :tasks, [Types::TaskType], null: false, description: 'タスクを全件取得する'
    def tasks
      Task.all
    end

    field :task, Types::TaskType, null: false, description: 'IDからタスクを取得する' do
      argument :id, Int, required: false
    end
    def task(id:)
      Task.find(id)
    end
  end
end
