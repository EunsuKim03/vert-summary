; ModuleID = 'benchmark/cpp_transcoder/LEONARDO_NUMBER_1/LEONARDO_NUMBER_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LEONARDO_NUMBER_1/LEONARDO_NUMBER_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LEONARDO_NUMBER_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %5, align 4, !tbaa !5
  store i32 1, i32* %4, align 16, !tbaa !5
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 3, i32* %8, align 8, !tbaa !5
  %9 = icmp eq i32 %2, 3
  br i1 %9, label %28, label %10, !llvm.loop !9

10:                                               ; preds = %7
  %11 = add nsw i64 %3, -3
  %12 = and i64 %11, 1
  %13 = icmp eq i32 %2, 4
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = and i64 %11, -2
  br label %32

16:                                               ; preds = %32
  %17 = add i32 %48, 1
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i64 [ 3, %10 ], [ %50, %16 ]
  %20 = phi i32 [ 4, %10 ], [ %17, %16 ]
  %21 = phi i64 [ 1, %10 ], [ %33, %16 ]
  %22 = icmp eq i64 %12, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds i32, i32* %4, i64 %21
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = add i32 %20, %25
  %27 = getelementptr inbounds i32, i32* %4, i64 %19
  store i32 %26, i32* %27, align 4, !tbaa !5
  br label %28

28:                                               ; preds = %23, %18, %7, %1
  %29 = sext i32 %0 to i64
  %30 = getelementptr inbounds i32, i32* %4, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  ret i32 %31

32:                                               ; preds = %32, %14
  %33 = phi i64 [ 3, %14 ], [ %50, %32 ]
  %34 = phi i32 [ 3, %14 ], [ %48, %32 ]
  %35 = phi i64 [ 2, %14 ], [ %43, %32 ]
  %36 = phi i64 [ 0, %14 ], [ %51, %32 ]
  %37 = add nsw i64 %35, -1
  %38 = getelementptr inbounds i32, i32* %4, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = add i32 %34, 1
  %41 = add i32 %40, %39
  %42 = getelementptr inbounds i32, i32* %4, i64 %33
  store i32 %41, i32* %42, align 4, !tbaa !5
  %43 = add nuw nsw i64 %33, 1
  %44 = add nsw i64 %33, -1
  %45 = getelementptr inbounds i32, i32* %4, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = add i32 %41, 1
  %48 = add i32 %47, %46
  %49 = getelementptr inbounds i32, i32* %4, i64 %43
  store i32 %48, i32* %49, align 4, !tbaa !5
  %50 = add nuw nsw i64 %33, 2
  %51 = add i64 %36, 2
  %52 = icmp eq i64 %51, %15
  br i1 %52, label %16, label %32, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LEONARDO_NUMBER_1_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
