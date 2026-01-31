El patrón repository lo vamos a dividir en dos que son los Datasource y Repository
### Datasource:
Establece como los orígenes de datos se comportan
```typescript
export abstract class LogDatasource {
	abstract saveLog( log: LogEntity ): Promise<void>;
	abstract getLogs( severityLeve: LogSeverityLevel ): Promise<LogEntity[]>;
}
```

### Repository:
Habla con el Datasource, esto permite cambiarlo fácilmente. Este implementa el datasource y se inyecta el origen de dato que necesitemos usar
```typescript
export class LogRepositoryImpl implements LogRepository {
	constructor(
		private readonly logDatasource: LogDatasource
	){}
}
```

