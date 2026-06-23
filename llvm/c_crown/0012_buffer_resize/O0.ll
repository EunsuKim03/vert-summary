; ModuleID = 'benchmark/c_crown/0012_buffer_resize/buffer_processed.c'
source_filename = "benchmark/c_crown/0012_buffer_resize/buffer_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.buffer_t = type { i64, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buffer_resize(%struct.buffer_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer_t*, align 8
  %5 = alloca i64, align 8
  store %struct.buffer_t* %0, %struct.buffer_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i32 (i32, i64, ...) bitcast (i32 (...)* @nearest_multiple_of to i32 (i32, i64, ...)*)(i32 noundef 1024, i64 noundef %6)
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %11 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %13 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %15, 1
  %17 = call i8* @realloc(i8* noundef %14, i64 noundef %16) #5
  %18 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %19 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %21 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %20, i32 0, i32 1
  store i8* %17, i8** %21, align 8
  %22 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %23 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %29 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 0, i8* %32, align 1
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %26
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare i32 @nearest_multiple_of(...) #1

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buffer_append_n(%struct.buffer_t* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.buffer_t* %0, %struct.buffer_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.buffer_t*, %struct.buffer_t** %5, align 8
  %12 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @strlen(i8* noundef %13) #6
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %9, align 8
  %18 = load %struct.buffer_t*, %struct.buffer_t** %5, align 8
  %19 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.buffer_t*, %struct.buffer_t** %5, align 8
  %25 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i8* @strncat(i8* noundef %26, i8* noundef %27, i64 noundef %28) #5
  store i32 0, i32* %4, align 4
  br label %44

30:                                               ; preds = %3
  %31 = load %struct.buffer_t*, %struct.buffer_t** %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @buffer_resize(%struct.buffer_t* noundef %31, i64 noundef %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 -1, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %44

37:                                               ; preds = %30
  %38 = load %struct.buffer_t*, %struct.buffer_t** %5, align 8
  %39 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i8* @strncat(i8* noundef %40, i8* noundef %41, i64 noundef %42) #5
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %37, %36, %23
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare i8* @strncat(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buffer_prepend(%struct.buffer_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.buffer_t* %0, %struct.buffer_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* noundef %10) #6
  store i64 %11, i64* %6, align 8
  %12 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %13 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strlen(i8* noundef %14) #6
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %8, align 8
  %19 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %20 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @buffer_resize(%struct.buffer_t* noundef %26, i64 noundef %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 -1, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %49

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %35 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %40 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %38, i8* align 1 %41, i64 %43, i1 false)
  %44 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %45 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 %47, i64 %48, i1 false)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %33, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
