; ModuleID = 'benchmark/cpp_transcoder/EVEN_FIBONACCI_NUMBERS_SUM/EVEN_FIBONACCI_NUMBERS_SUM_processed.cpp'
source_filename = "benchmark/cpp_transcoder/EVEN_FIBONACCI_NUMBERS_SUM/EVEN_FIBONACCI_NUMBERS_SUM_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_EVEN_FIBONACCI_NUMBERS_SUM_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp slt i32 %0, 2
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  br label %5

5:                                                ; preds = %3, %10
  %6 = phi i64 [ %14, %10 ], [ 0, %3 ]
  %7 = phi i64 [ %15, %10 ], [ 2, %3 ]
  %8 = phi i64 [ %17, %10 ], [ 2, %3 ]
  %9 = icmp sgt i64 %7, %4
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = shl nsw i64 %7, 2
  %12 = add nsw i64 %11, %6
  %13 = icmp sgt i64 %12, %4
  %14 = select i1 %13, i64 %6, i64 %7
  %15 = select i1 %13, i64 %7, i64 %12
  %16 = select i1 %13, i64 0, i64 %12
  %17 = add nsw i64 %8, %16
  br i1 %13, label %18, label %5

18:                                               ; preds = %10, %5
  %19 = phi i64 [ %17, %10 ], [ %8, %5 ]
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %1, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_EVEN_FIBONACCI_NUMBERS_SUM_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
