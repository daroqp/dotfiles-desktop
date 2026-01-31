Los casos de uso son las reglas de negocio
Los casos de uso van a tener acceso a los repositorios, el cual ya llega configurado para que llames sus métodos.
Al caso de uso, no le interesa si es MongoDB, PostgresSQL o FileSystem

```typescript
export class CheckService implements CheckServiceUseCase {
	contructor(
		private logRepository: LogRepository,
	){}
}
```
