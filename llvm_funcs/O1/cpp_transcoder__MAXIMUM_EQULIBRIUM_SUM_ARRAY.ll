; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_EQULIBRIUM_SUM_ARRAY/MAXIMUM_EQULIBRIUM_SUM_ARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_EQULIBRIUM_SUM_ARRAY/MAXIMUM_EQULIBRIUM_SUM_ARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_EQULIBRIUM_SUM_ARRAY_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = sext i32 %1 to i64
  %7 = add nsw i64 %6, -1
  %8 = sext i32 %5 to i64
  %9 = zext i32 %1 to i64
  br label %12

10:                                               ; preds = %29, %2
  %11 = phi i32 [ -2147483648, %2 ], [ %34, %29 ]
  ret i32 %11

12:                                               ; preds = %4, %29
  %13 = phi i64 [ 0, %4 ], [ %35, %29 ]
  %14 = phi i32 [ -2147483648, %4 ], [ %34, %29 ]
  %15 = getelementptr inbounds i32, i32* %0, i64 %13
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = icmp eq i64 %13, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %21, %12
  %19 = phi i32 [ %16, %12 ], [ %26, %21 ]
  %20 = icmp slt i64 %13, %8
  br i1 %20, label %37, label %29

21:                                               ; preds = %12, %21
  %22 = phi i64 [ %27, %21 ], [ 0, %12 ]
  %23 = phi i32 [ %26, %21 ], [ %16, %12 ]
  %24 = getelementptr inbounds i32, i32* %0, i64 %22
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = add nsw i32 %25, %23
  %27 = add nuw nsw i64 %22, 1
  %28 = icmp eq i64 %27, %13
  br i1 %28, label %18, label %21, !llvm.loop !9

29:                                               ; preds = %37, %18
  %30 = phi i32 [ %16, %18 ], [ %42, %37 ]
  %31 = icmp eq i32 %19, %30
  %32 = icmp slt i32 %14, %19
  %33 = select i1 %31, i1 %32, i1 false
  %34 = select i1 %33, i32 %19, i32 %14
  %35 = add nuw nsw i64 %13, 1
  %36 = icmp eq i64 %35, %9
  br i1 %36, label %10, label %12, !llvm.loop !12

37:                                               ; preds = %18, %37
  %38 = phi i64 [ %43, %37 ], [ %7, %18 ]
  %39 = phi i32 [ %42, %37 ], [ %16, %18 ]
  %40 = getelementptr inbounds i32, i32* %0, i64 %38
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = add nsw i32 %41, %39
  %43 = add nsw i64 %38, -1
  %44 = icmp sgt i64 %43, %13
  br i1 %44, label %37, label %29, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_EQULIBRIUM_SUM_ARRAY_reprocessed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = distinct !{!13, !10, !11}
