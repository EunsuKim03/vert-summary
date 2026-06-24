; ModuleID = 'benchmark/c_crown/0005_buffer_new/buffer_processed.c'
source_filename = "benchmark/c_crown/0005_buffer_new/buffer_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.buffer_t = type { i64, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_t* @buffer_new_with_size(i64 noundef %0) #0 {
  %2 = alloca %struct.buffer_t*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.buffer_t*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call noalias i8* @malloc(i64 noundef 24) #2
  %6 = bitcast i8* %5 to %struct.buffer_t*
  store %struct.buffer_t* %6, %struct.buffer_t** %4, align 8
  %7 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %8 = icmp ne %struct.buffer_t* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.buffer_t* null, %struct.buffer_t** %2, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %13 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %14, 1
  %16 = call noalias i8* @calloc(i64 noundef %15, i64 noundef 1) #2
  %17 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %18 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  %20 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %19, i32 0, i32 2
  store i8* %16, i8** %20, align 8
  %21 = load %struct.buffer_t*, %struct.buffer_t** %4, align 8
  store %struct.buffer_t* %21, %struct.buffer_t** %2, align 8
  br label %22

22:                                               ; preds = %10, %9
  %23 = load %struct.buffer_t*, %struct.buffer_t** %2, align 8
  ret %struct.buffer_t* %23
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
