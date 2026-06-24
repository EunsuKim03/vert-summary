; ModuleID = 'llvm/c_crown/0009_url/decode_reprocessed.c'
source_filename = "llvm/c_crown/0009_url/decode_reprocessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"aaa\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"javascript\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"jdbc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"doi\00", align 1
@URL_SCHEMES = dso_local global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%[^://]\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%[^@]\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%[^:]\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%[^/]\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"http://user:pass@subdomain.host.com:8080/p/a/t/h?query=string#hash\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"/p/a/t/h?query=string#hash\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"0 == strcmp(\22/p/a/t/h?query=string#hash\22, url_get_path(url))\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"llvm/c_crown/0009_url/decode_reprocessed.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @url_is_protocol(i8* noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 4, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcmp(i8* noundef %14, i8* noundef %15) #4
  %17 = icmp eq i32 0, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i1 true, i1* %2, align 1
  br label %24

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %6, !llvm.loop !6

23:                                               ; preds = %6
  store i1 false, i1* %2, align 1
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i1, i1* %2, align 1
  ret i1 %25
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @url_is_ssh(i8* noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call noalias i8* @strdup(i8* noundef %4) #5
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #4
  %8 = icmp eq i32 0, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #4
  %12 = icmp eq i32 0, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %1
  %14 = load i8*, i8** %3, align 8
  call void @free(i8* noundef %14) #5
  store i1 true, i1* %2, align 1
  br label %16

15:                                               ; preds = %9
  store i1 false, i1* %2, align 1
  br label %16

16:                                               ; preds = %15, %13
  %17 = load i1, i1* %2, align 1
  ret i1 %17
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @url_get_protocol(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call noalias i8* @malloc(i64 noundef 16) #5
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %18

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %10, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef %11) #5
  %13 = load i8*, i8** %4, align 8
  %14 = call zeroext i1 @url_is_protocol(i8* noundef %13)
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %2, align 8
  br label %18

17:                                               ; preds = %9
  store i8* null, i8** %2, align 8
  br label %18

18:                                               ; preds = %17, %15, %8
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @url_get_auth(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @url_get_protocol(i8* noundef %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* noundef %12) #4
  %14 = trunc i64 %13 to i32
  %15 = add nsw i32 %14, 3
  store i32 %15, i32* %5, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i8* @get_part(i8* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %17)
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_part(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 0, i8* %8, align 1
  %13 = call noalias i8* @malloc(i64 noundef 1) #5
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call noalias i8* @strdup(i8* noundef %14) #5
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call noalias i8* @strdup(i8* noundef %16) #5
  store i8* %17, i8** %11, align 8
  %18 = call noalias i8* @malloc(i64 noundef 1) #5
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %24, %21, %3
  store i8* null, i8** %4, align 8
  br label %64

31:                                               ; preds = %27
  %32 = load i8*, i8** %9, align 8
  %33 = call i8* @strcpy(i8* noundef %32, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #5
  %34 = load i8*, i8** %11, align 8
  %35 = call i8* @strcpy(i8* noundef %34, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #5
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @strff(i8* noundef %36, i32 noundef %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %39, i8* noundef %40, i8* noundef %41) #5
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @strcmp(i8* noundef %43, i8* noundef %44) #4
  %46 = icmp ne i32 0, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  store i8 1, i8* %8, align 1
  %48 = load i8*, i8** %9, align 8
  %49 = call noalias i8* @strdup(i8* noundef %48) #5
  store i8* %49, i8** %12, align 8
  br label %50

50:                                               ; preds = %47, %31
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @strrwd(i8* noundef %51, i32 noundef %52)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %54) #5
  %55 = load i8*, i8** %10, align 8
  call void @free(i8* noundef %55) #5
  %56 = load i8*, i8** %11, align 8
  call void @free(i8* noundef %56) #5
  %57 = load i8, i8* %8, align 1
  %58 = trunc i8 %57 to i1
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i8*, i8** %12, align 8
  br label %62

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i8* [ %60, %59 ], [ null, %61 ]
  store i8* %63, i8** %4, align 8
  br label %64

64:                                               ; preds = %62, %30
  %65 = load i8*, i8** %4, align 8
  ret i8* %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @url_get_hostname(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 3, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @url_get_protocol(i8* noundef %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call noalias i8* @strdup(i8* noundef %11) #5
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @url_get_auth(i8* noundef %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %55

18:                                               ; preds = %1
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strlen(i8* noundef %22) #4
  %24 = add i64 %23, 1
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %33) #5
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strlen(i8* noundef %35) #4
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %40) #5
  %41 = load i8*, i8** %6, align 8
  %42 = call zeroext i1 @url_is_ssh(i8* noundef %41)
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i8* @get_part(i8* noundef %44, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 noundef %45)
  br label %51

47:                                               ; preds = %34
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i8* @get_part(i8* noundef %48, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 noundef %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i8* [ %46, %43 ], [ %50, %47 ]
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %53) #5
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %2, align 8
  br label %55

55:                                               ; preds = %51, %17
  %56 = load i8*, i8** %2, align 8
  ret i8* %56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @url_get_path(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 3, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @url_get_protocol(i8* noundef %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @url_get_auth(i8* noundef %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @url_get_hostname(i8* noundef %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %1
  store i8* null, i8** %2, align 8
  br label %80

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call zeroext i1 @url_is_ssh(i8* noundef %25)
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %9, align 1
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strlen(i8* noundef %28) #4
  %30 = trunc i64 %29 to i32
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @strlen(i8* noundef %31) #4
  %33 = trunc i64 %32 to i32
  %34 = add nsw i32 %30, %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %24
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @strlen(i8* noundef %40) #4
  %42 = trunc i64 %41 to i32
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %24
  %47 = load i8, i8* %9, align 1
  %48 = trunc i8 %47 to i1
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i8*, i8** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i8* @get_part(i8* noundef %50, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef %51)
  br label %57

53:                                               ; preds = %46
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i8* @get_part(i8* noundef %54, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 noundef %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i8* [ %52, %49 ], [ %56, %53 ]
  store i8* %58, i8** %5, align 8
  %59 = load i8, i8* %9, align 1
  %60 = trunc i8 %59 to i1
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @strlen(i8* noundef %63) #4
  %65 = mul i64 %64, 1
  %66 = call noalias i8* @malloc(i64 noundef %65) #5
  store i8* %66, i8** %11, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %67, i8* noundef %68, i8* noundef %69) #5
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %74) #5
  br label %75

75:                                               ; preds = %73, %57
  %76 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %76) #5
  %77 = load i8*, i8** %8, align 8
  call void @free(i8* noundef %77) #5
  %78 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %78) #5
  %79 = load i8*, i8** %11, align 8
  store i8* %79, i8** %2, align 8
  br label %80

80:                                               ; preds = %75, %23
  %81 = load i8*, i8** %2, align 8
  ret i8* %81
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0), i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i8* @url_get_path(i8* noundef %2)
  %4 = call i32 @strcmp(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* noundef %3) #4
  %5 = icmp eq i32 0, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %8

7:                                                ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

8:                                                ; preds = %6
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strff(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %16, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  br label %7, !llvm.loop !8

19:                                               ; preds = %7
  %20 = load i8*, i8** %3, align 8
  %21 = call noalias i8* @strdup(i8* noundef %20) #5
  ret i8* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strrwd(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %16, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %13, i8** %3, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  br label %7, !llvm.loop !9

19:                                               ; preds = %7
  %20 = load i8*, i8** %3, align 8
  %21 = call noalias i8* @strdup(i8* noundef %20) #5
  ret i8* %21
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
