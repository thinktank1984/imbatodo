import './style.css'


var items =[
	{title:"ABC1"}
	{title:"ABC2"}
]

tag TodoItem 
	def render
		<self>
			<li> data.title


tag app

	def submit2
		console.log ("submitted",$field.value)
		let item={
			title:$field.value}
		items.push(item)
		$field.value=""
	def render
		<self> 
			<form.header @submit.prevent=submit2>
				<input$field type='text' placeholder="What to do...">
				<button  type='submit'> "Add"
			<ul>
				for item in items
					<TodoItem data=item>
					# <li> item.title
imba.mount <app>

