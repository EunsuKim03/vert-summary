; ModuleID = 'llvm/c_crown/0013_ht_create/ht_reprocessed.c'
source_filename = "llvm/c_crown/0013_ht_create/ht_reprocessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ht = type { %struct.ht_entry*, i64, i64 }
%struct.ht_entry = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ht* @ht_create() #0 {
  %1 = alloca %struct.ht*, align 8
  %2 = alloca %struct.ht*, align 8
  %3 = call noalias i8* @malloc(i64 noundef 24) #2
  %4 = bitcast i8* %3 to %struct.ht*
  store %struct.ht* %4, %struct.ht** %2, align 8
  %5 = load %struct.ht*, %struct.ht** %2, align 8
  %6 = icmp eq %struct.ht* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.ht* null, %struct.ht** %1, align 8
  br label %29

8:                                                ; preds = %0
  %9 = load %struct.ht*, %struct.ht** %2, align 8
  %10 = getelementptr inbounds %struct.ht, %struct.ht* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.ht*, %struct.ht** %2, align 8
  %12 = getelementptr inbounds %struct.ht, %struct.ht* %11, i32 0, i32 1
  store i64 16, i64* %12, align 8
  %13 = load %struct.ht*, %struct.ht** %2, align 8
  %14 = getelementptr inbounds %struct.ht, %struct.ht* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call noalias i8* @calloc(i64 noundef %15, i64 noundef 16) #2
  %17 = bitcast i8* %16 to %struct.ht_entry*
  %18 = load %struct.ht*, %struct.ht** %2, align 8
  %19 = getelementptr inbounds %struct.ht, %struct.ht* %18, i32 0, i32 0
  store %struct.ht_entry* %17, %struct.ht_entry** %19, align 8
  %20 = load %struct.ht*, %struct.ht** %2, align 8
  %21 = getelementptr inbounds %struct.ht, %struct.ht* %20, i32 0, i32 0
  %22 = load %struct.ht_entry*, %struct.ht_entry** %21, align 8
  %23 = icmp eq %struct.ht_entry* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load %struct.ht*, %struct.ht** %2, align 8
  %26 = bitcast %struct.ht* %25 to i8*
  call void @free(i8* noundef %26) #2
  store %struct.ht* null, %struct.ht** %1, align 8
  br label %29

27:                                               ; preds = %8
  %28 = load %struct.ht*, %struct.ht** %2, align 8
  store %struct.ht* %28, %struct.ht** %1, align 8
  br label %29

29:                                               ; preds = %27, %24, %7
  %30 = load %struct.ht*, %struct.ht** %1, align 8
  ret %struct.ht* %30
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ht_destroy(%struct.ht* noundef %0) #0 {
  %2 = alloca %struct.ht*, align 8
  %3 = alloca i64, align 8
  store %struct.ht* %0, %struct.ht** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.ht*, %struct.ht** %2, align 8
  %7 = getelementptr inbounds %struct.ht, %struct.ht* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load %struct.ht*, %struct.ht** %2, align 8
  %12 = getelementptr inbounds %struct.ht, %struct.ht* %11, i32 0, i32 0
  %13 = load %struct.ht_entry*, %struct.ht_entry** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.ht_entry, %struct.ht_entry* %13, i64 %14
  %16 = getelementptr inbounds %struct.ht_entry, %struct.ht_entry* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %17) #2
  br label %18

18:                                               ; preds = %10
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %3, align 8
  br label %4, !llvm.loop !6

21:                                               ; preds = %4
  %22 = load %struct.ht*, %struct.ht** %2, align 8
  %23 = getelementptr inbounds %struct.ht, %struct.ht* %22, i32 0, i32 0
  %24 = load %struct.ht_entry*, %struct.ht_entry** %23, align 8
  %25 = bitcast %struct.ht_entry* %24 to i8*
  call void @free(i8* noundef %25) #2
  %26 = load %struct.ht*, %struct.ht** %2, align 8
  %27 = bitcast %struct.ht* %26 to i8*
  call void @free(i8* noundef %27) #2
  ret void
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
