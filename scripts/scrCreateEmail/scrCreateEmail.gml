function createEmail(sender, subject, content){
	return {
		sender: sender,
		subject: subject,
		content: content,
		unread: true
	};
}