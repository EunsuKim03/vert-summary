; ModuleID = 'benchmark/cpp_transcoder/SUM_FIBONACCI_NUMBERS/SUM_FIBONACCI_NUMBERS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SUM_FIBONACCI_NUMBERS/SUM_FIBONACCI_NUMBERS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_FIBONACCI_NUMBERS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %56, label %3

3:                                                ; preds = %1
  %4 = add nuw i32 %0, 1
  %5 = zext i32 %4 to i64
  %6 = tail call i8* @llvm.stacksave()
  %7 = alloca i32, i64 %5, align 16
  store i32 0, i32* %7, align 16, !tbaa !5
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 1, i32* %8, align 4, !tbaa !5
  %9 = icmp eq i32 %0, 1
  br i1 %9, label %32, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds i32, i32* %7, i64 2
  store i32 1, i32* %11, align 8, !tbaa !5
  %12 = icmp eq i32 %4, 3
  br i1 %12, label %32, label %13, !llvm.loop !9

13:                                               ; preds = %10
  %14 = add nsw i64 %5, -3
  %15 = and i64 %14, 1
  %16 = icmp eq i32 %4, 4
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = and i64 %14, -2
  br label %34

19:                                               ; preds = %34, %13
  %20 = phi i32 [ undef, %13 ], [ %52, %34 ]
  %21 = phi i64 [ 3, %13 ], [ %53, %34 ]
  %22 = phi i32 [ 2, %13 ], [ %52, %34 ]
  %23 = phi i32 [ 1, %13 ], [ %50, %34 ]
  %24 = phi i64 [ 1, %13 ], [ %35, %34 ]
  %25 = icmp eq i64 %15, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds i32, i32* %7, i64 %24
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = add nsw i32 %28, %23
  %30 = getelementptr inbounds i32, i32* %7, i64 %21
  store i32 %29, i32* %30, align 4, !tbaa !5
  %31 = add nsw i32 %29, %22
  br label %32

32:                                               ; preds = %26, %19, %10, %3
  %33 = phi i32 [ 1, %3 ], [ 2, %10 ], [ %20, %19 ], [ %31, %26 ]
  tail call void @llvm.stackrestore(i8* %6)
  br label %56

34:                                               ; preds = %34, %17
  %35 = phi i64 [ 3, %17 ], [ %53, %34 ]
  %36 = phi i32 [ 2, %17 ], [ %52, %34 ]
  %37 = phi i32 [ 1, %17 ], [ %50, %34 ]
  %38 = phi i64 [ 2, %17 ], [ %46, %34 ]
  %39 = phi i64 [ 0, %17 ], [ %54, %34 ]
  %40 = add nsw i64 %38, -1
  %41 = getelementptr inbounds i32, i32* %7, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = add nsw i32 %42, %37
  %44 = getelementptr inbounds i32, i32* %7, i64 %35
  store i32 %43, i32* %44, align 4, !tbaa !5
  %45 = add nsw i32 %43, %36
  %46 = add nuw nsw i64 %35, 1
  %47 = add nsw i64 %35, -1
  %48 = getelementptr inbounds i32, i32* %7, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = add nsw i32 %49, %43
  %51 = getelementptr inbounds i32, i32* %7, i64 %46
  store i32 %50, i32* %51, align 4, !tbaa !5
  %52 = add nsw i32 %50, %45
  %53 = add nuw nsw i64 %35, 2
  %54 = add i64 %39, 2
  %55 = icmp eq i64 %54, %18
  br i1 %55, label %19, label %34, !llvm.loop !9

56:                                               ; preds = %1, %32
  %57 = phi i32 [ %33, %32 ], [ 0, %1 ]
  ret i32 %57
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_FIBONACCI_NUMBERS_processed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
