# Description:
#   Handle 'exit' and 'uncaughtException' event emitted by process and write hubot log.
#
# Commands:

module.exports = (robot) ->
  process.on 'exit', (code) ->
    if code
      robot.logger.error "#{robot.name} exits with code #{code}."
    else
      robot.logger.info "#{robot.name} exits normally."

  process.on 'uncaughtException', (err) ->
    robot.logger.error "#{robot.name} crashes with an uncaught exception. [msg:#{err.message}]"
