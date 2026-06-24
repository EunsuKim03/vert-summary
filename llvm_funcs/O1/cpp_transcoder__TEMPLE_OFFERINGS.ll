; ModuleID = 'benchmark/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_TEMPLE_OFFERINGS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = zext i32 %0 to i64
  br label %6

6:                                                ; preds = %4, %46
  %7 = phi i32 [ %0, %4 ], [ %11, %46 ]
  %8 = phi i64 [ 1, %4 ], [ %52, %46 ]
  %9 = phi i64 [ 0, %4 ], [ %30, %46 ]
  %10 = phi i32 [ 0, %4 ], [ %51, %46 ]
  %11 = add i32 %7, -1
  %12 = trunc i64 %9 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %16

14:                                               ; preds = %46, %2
  %15 = phi i32 [ 0, %2 ], [ %51, %46 ]
  ret i32 %15

16:                                               ; preds = %6, %25
  %17 = phi i64 [ %19, %25 ], [ %9, %6 ]
  %18 = phi i32 [ %26, %25 ], [ 0, %6 ]
  %19 = add nsw i64 %17, -1
  %20 = getelementptr inbounds i32, i32* %1, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = getelementptr inbounds i32, i32* %1, i64 %17
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = add nuw nsw i32 %18, 1
  %27 = icmp eq i32 %26, %12
  br i1 %27, label %28, label %16, !llvm.loop !9

28:                                               ; preds = %25, %16, %6
  %29 = phi i32 [ 0, %6 ], [ %12, %25 ], [ %18, %16 ]
  %30 = add nuw nsw i64 %9, 1
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %31, %0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28, %42
  %34 = phi i64 [ %44, %42 ], [ %8, %28 ]
  %35 = phi i32 [ %43, %42 ], [ 0, %28 ]
  %36 = getelementptr inbounds i32, i32* %1, i64 %34
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %38 = add nsw i64 %34, -1
  %39 = getelementptr inbounds i32, i32* %1, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = add nuw i32 %35, 1
  %44 = add nuw nsw i64 %34, 1
  %45 = icmp eq i32 %43, %11
  br i1 %45, label %46, label %33, !llvm.loop !12

46:                                               ; preds = %42, %33, %28
  %47 = phi i32 [ 0, %28 ], [ %11, %42 ], [ %35, %33 ]
  %48 = icmp ult i32 %47, %29
  %49 = select i1 %48, i32 %29, i32 %47
  %50 = add i32 %10, 1
  %51 = add i32 %50, %49
  %52 = add nuw nsw i64 %8, 1
  %53 = icmp eq i64 %30, %5
  br i1 %53, label %14, label %6, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_TEMPLE_OFFERINGS_processed.cpp() #4 section ".text.startup" {
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
