; ModuleID = 'llvm/cpp_transcoder/REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX/REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX/REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = sext i32 %1 to i64
  br label %7

7:                                                ; preds = %4, %50
  %8 = phi i64 [ 0, %4 ], [ %51, %50 ]
  %9 = phi i32 [ 0, %4 ], [ %46, %50 ]
  %10 = phi i32 [ -1, %4 ], [ %45, %50 ]
  %11 = trunc i64 %8 to i32
  br label %20

12:                                               ; preds = %50, %2
  %13 = phi i32 [ -1, %2 ], [ %45, %50 ]
  %14 = phi i32 [ 0, %2 ], [ %46, %50 ]
  %15 = icmp eq i32 %13, -1
  %16 = xor i32 %14, -1
  %17 = add i32 %13, %16
  %18 = select i1 %15, i32 0, i32 %17
  %19 = add i32 %18, %1
  ret i32 %19

20:                                               ; preds = %7, %44
  %21 = phi i64 [ %8, %7 ], [ %47, %44 ]
  %22 = phi i32 [ -2147483648, %7 ], [ %31, %44 ]
  %23 = phi i32 [ 2147483647, %7 ], [ %29, %44 ]
  %24 = phi i32 [ %9, %7 ], [ %46, %44 ]
  %25 = phi i32 [ %10, %7 ], [ %45, %44 ]
  %26 = getelementptr inbounds i32, i32* %0, i64 %21
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = icmp slt i32 %27, %23
  %29 = select i1 %28, i32 %27, i32 %23
  %30 = icmp sgt i32 %27, %22
  %31 = select i1 %30, i32 %27, i32 %22
  %32 = shl nsw i32 %29, 1
  %33 = icmp sgt i32 %32, %31
  br i1 %33, label %34, label %44

34:                                               ; preds = %20
  %35 = sub nuw nsw i64 %21, %8
  %36 = sub nsw i32 %24, %25
  %37 = sext i32 %36 to i64
  %38 = icmp sgt i64 %35, %37
  %39 = icmp eq i32 %25, -1
  %40 = or i1 %39, %38
  %41 = select i1 %40, i32 %11, i32 %25
  %42 = trunc i64 %21 to i32
  %43 = select i1 %40, i32 %42, i32 %24
  br label %44

44:                                               ; preds = %20, %34
  %45 = phi i32 [ %41, %34 ], [ %25, %20 ]
  %46 = phi i32 [ %43, %34 ], [ %24, %20 ]
  %47 = add nuw nsw i64 %21, 1
  %48 = icmp slt i64 %47, %6
  %49 = select i1 %33, i1 %48, i1 false
  br i1 %49, label %20, label %50, !llvm.loop !9

50:                                               ; preds = %44
  %51 = add nuw nsw i64 %8, 1
  %52 = icmp eq i64 %51, %5
  br i1 %52, label %12, label %7, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX_reprocessed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
