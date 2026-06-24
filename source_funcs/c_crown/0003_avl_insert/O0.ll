; ModuleID = 'benchmark/c_crown/0003_avl_insert/insert_processed.c'
source_filename = "benchmark/c_crown/0003_avl_insert/insert_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i32, %struct.node*, %struct.node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @newNode(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 noundef 24) #2
  %5 = bitcast i8* %4 to %struct.node*
  store %struct.node* %5, %struct.node** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.node*, %struct.node** %3, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.node*, %struct.node** %3, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  store %struct.node* null, %struct.node** %10, align 8
  %11 = load %struct.node*, %struct.node** %3, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 2
  store %struct.node* null, %struct.node** %12, align 8
  %13 = load %struct.node*, %struct.node** %3, align 8
  ret %struct.node* %13
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @insert(%struct.node* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.node*, %struct.node** %4, align 8
  %7 = icmp eq %struct.node* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.node* @newNode(i32 noundef %9)
  store %struct.node* %10, %struct.node** %3, align 8
  br label %35

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.node*, %struct.node** %4, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.node*, %struct.node** %4, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 1
  %20 = load %struct.node*, %struct.node** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.node* @insert(%struct.node* noundef %20, i32 noundef %21)
  %23 = load %struct.node*, %struct.node** %4, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 1
  store %struct.node* %22, %struct.node** %24, align 8
  br label %33

25:                                               ; preds = %11
  %26 = load %struct.node*, %struct.node** %4, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 2
  %28 = load %struct.node*, %struct.node** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.node* @insert(%struct.node* noundef %28, i32 noundef %29)
  %31 = load %struct.node*, %struct.node** %4, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 2
  store %struct.node* %30, %struct.node** %32, align 8
  br label %33

33:                                               ; preds = %25, %17
  %34 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %34, %struct.node** %3, align 8
  br label %35

35:                                               ; preds = %33, %8
  %36 = load %struct.node*, %struct.node** %3, align 8
  ret %struct.node* %36
}

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
