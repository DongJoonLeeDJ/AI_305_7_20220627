int aabb = 100; //다른 파일에서 이 변수 쓸 수 있음(extern 키워드 통해)
static int bbaa = 200;//static은 다른 파일에선 못 가져옴

//static 붙은 변수는 이 파일(statictest.c)에서만 
//글로벌 혹은 로컬로써 사용이 가능함
int myin()
{
	bbaa++;
	printf("\n\n%d\n\n", bbaa);
}