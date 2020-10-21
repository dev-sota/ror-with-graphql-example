# Ruby on Rails with Graphql Example

## Usage

```
query {
  tasks {
    id
    title
    description
    completed
  }
}
```

```
query {
 task(id:1) {
    id
    title
    description
    completed
 }
}
```

```
mutation {
  createTask(
    input: {
      title: "new task"
      description: "This is a new task."
    }
  ) {
    task {
      id
      title
      description
      completed
    }
    result
  }
}
```

```
mutation {
  updateTask(
    input: {
      id: 11
      completed: true
    }
  ) {
    task {
      id
      title
      description
      completed
    }
    result
  }
}
```

```
mutation {
  deleteTask(
    input: {
      id: 11
    }
  ) {
    task{
      id
    }
  }
}
```
