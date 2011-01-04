# Para sacar los procesos de la cola, modificar attempts=0 y failed_at=nil - Delayed::Job.first.update_attributes(:attempts => 0, :failed_at => nil)

Delayed::Worker.destroy_failed_jobs = false
Delayed::Worker.max_attempts = 6
Delayed::Worker.max_run_time = 15.minutes 
