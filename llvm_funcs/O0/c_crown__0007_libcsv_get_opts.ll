; ModuleID = 'benchmark/c_crown/0007_libcsv_get_opts/csvinfo_processed.c'
source_filename = "benchmark/c_crown/0007_libcsv_get_opts/csvinfo_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csv_get_opts(%struct.csv_parser* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csv_parser*, align 8
  store %struct.csv_parser* %0, %struct.csv_parser** %3, align 8
  %4 = load %struct.csv_parser*, %struct.csv_parser** %3, align 8
  %5 = icmp eq %struct.csv_parser* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %12

7:                                                ; preds = %1
  %8 = load %struct.csv_parser*, %struct.csv_parser** %3, align 8
  %9 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %8, i32 0, i32 7
  %10 = load i8, i8* %9, align 4
  %11 = zext i8 %10 to i32
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %7, %6
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
