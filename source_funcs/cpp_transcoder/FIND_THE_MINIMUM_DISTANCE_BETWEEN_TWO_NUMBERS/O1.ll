; ModuleID = 'llvm/cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %48

6:                                                ; preds = %4
  %7 = sext i32 %1 to i64
  %8 = zext i32 %1 to i64
  %9 = zext i32 %1 to i64
  br label %14

10:                                               ; preds = %44, %14
  %11 = phi i32 [ %17, %14 ], [ %45, %44 ]
  %12 = add nuw nsw i64 %16, 1
  %13 = icmp eq i64 %18, %8
  br i1 %13, label %48, label %14, !llvm.loop !5

14:                                               ; preds = %6, %10
  %15 = phi i64 [ 0, %6 ], [ %18, %10 ]
  %16 = phi i64 [ 1, %6 ], [ %12, %10 ]
  %17 = phi i32 [ 2147483647, %6 ], [ %11, %10 ]
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp slt i64 %18, %7
  br i1 %19, label %20, label %10

20:                                               ; preds = %14
  %21 = getelementptr inbounds i32, i32* %0, i64 %15
  %22 = load i32, i32* %21, align 4, !tbaa !8
  %23 = icmp eq i32 %22, %2
  %24 = icmp eq i32 %22, %3
  %25 = trunc i64 %15 to i32
  br label %26

26:                                               ; preds = %20, %44
  %27 = phi i64 [ %16, %20 ], [ %46, %44 ]
  %28 = phi i32 [ %17, %20 ], [ %45, %44 ]
  %29 = trunc i64 %27 to i32
  br i1 %23, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds i32, i32* %0, i64 %27
  %32 = load i32, i32* %31, align 4, !tbaa !8
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %39, label %34

34:                                               ; preds = %30, %26
  br i1 %24, label %35, label %44

35:                                               ; preds = %34
  %36 = getelementptr inbounds i32, i32* %0, i64 %27
  %37 = load i32, i32* %36, align 4, !tbaa !8
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %30
  %40 = sub nsw i32 %25, %29
  %41 = call i32 @llvm.abs.i32(i32 %40, i1 true)
  %42 = icmp sgt i32 %28, %41
  %43 = select i1 %42, i32 %41, i32 %28
  br label %44

44:                                               ; preds = %39, %34, %35
  %45 = phi i32 [ %28, %35 ], [ %28, %34 ], [ %43, %39 ]
  %46 = add nuw nsw i64 %27, 1
  %47 = icmp eq i64 %46, %9
  br i1 %47, label %10, label %26, !llvm.loop !12

48:                                               ; preds = %10, %4
  %49 = phi i32 [ 2147483647, %4 ], [ %11, %10 ]
  ret i32 %49
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_reprocessed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !7}
