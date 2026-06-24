; ModuleID = 'benchmark/cpp_transcoder/NEWMAN_CONWAY_SEQUENCE_1/NEWMAN_CONWAY_SEQUENCE_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/NEWMAN_CONWAY_SEQUENCE_1/NEWMAN_CONWAY_SEQUENCE_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_NEWMAN_CONWAY_SEQUENCE_1_processed.cpp, i8* null }]

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
  store i32 0, i32* %4, align 16, !tbaa !5
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %5, align 4, !tbaa !5
  %6 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 1, i32* %6, align 8, !tbaa !5
  %7 = icmp slt i32 %0, 3
  br i1 %7, label %60, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds i32, i32* %4, i64 2
  %10 = load i32, i32* %9, align 8, !tbaa !5
  %11 = add nsw i32 %10, 1
  %12 = getelementptr inbounds i32, i32* %4, i64 3
  store i32 %11, i32* %12, align 4, !tbaa !5
  %13 = icmp eq i32 %2, 4
  br i1 %13, label %60, label %14, !llvm.loop !9

14:                                               ; preds = %8
  %15 = and i64 %3, 1
  %16 = icmp eq i32 %2, 5
  br i1 %16, label %46, label %17

17:                                               ; preds = %14
  %18 = add nsw i64 %3, -4
  %19 = and i64 %18, -2
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i64 [ 4, %17 ], [ %43, %20 ]
  %22 = phi i32 [ %11, %17 ], [ %41, %20 ]
  %23 = phi i64 [ 0, %17 ], [ %44, %20 ]
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %4, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = sext i32 %22 to i64
  %28 = sub nsw i64 %21, %27
  %29 = getelementptr inbounds i32, i32* %4, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = add nsw i32 %30, %26
  %32 = getelementptr inbounds i32, i32* %4, i64 %21
  store i32 %31, i32* %32, align 8, !tbaa !5
  %33 = or i64 %21, 1
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds i32, i32* %4, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = sext i32 %31 to i64
  %38 = sub nsw i64 %33, %37
  %39 = getelementptr inbounds i32, i32* %4, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = add nsw i32 %40, %36
  %42 = getelementptr inbounds i32, i32* %4, i64 %33
  store i32 %41, i32* %42, align 4, !tbaa !5
  %43 = add nuw nsw i64 %21, 2
  %44 = add i64 %23, 2
  %45 = icmp eq i64 %44, %19
  br i1 %45, label %46, label %20, !llvm.loop !9

46:                                               ; preds = %20, %14
  %47 = phi i64 [ 4, %14 ], [ %43, %20 ]
  %48 = phi i32 [ %11, %14 ], [ %41, %20 ]
  %49 = icmp eq i64 %15, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds i32, i32* %4, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = sext i32 %48 to i64
  %55 = sub nsw i64 %47, %54
  %56 = getelementptr inbounds i32, i32* %4, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = add nsw i32 %57, %53
  %59 = getelementptr inbounds i32, i32* %4, i64 %47
  store i32 %58, i32* %59, align 4, !tbaa !5
  br label %60

60:                                               ; preds = %50, %46, %8, %1
  %61 = sext i32 %0 to i64
  %62 = getelementptr inbounds i32, i32* %4, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !5
  ret i32 %63
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NEWMAN_CONWAY_SEQUENCE_1_processed.cpp() #4 section ".text.startup" {
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
