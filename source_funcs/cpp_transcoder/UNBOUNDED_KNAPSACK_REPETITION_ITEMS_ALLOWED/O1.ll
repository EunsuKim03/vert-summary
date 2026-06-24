; ModuleID = 'llvm/cpp_transcoder/UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED/UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED/UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldiiPiS_(i32 noundef %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32* nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = add nsw i32 %0, 1
  %6 = zext i32 %5 to i64
  %7 = alloca i32, i64 %6, align 16
  %8 = bitcast i32* %7 to i8*
  %9 = shl nuw nsw i64 %6, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = icmp slt i32 %0, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %4
  %12 = icmp sgt i32 %1, 0
  %13 = add i32 %0, 1
  %14 = zext i32 %13 to i64
  %15 = zext i32 %1 to i64
  br label %16

16:                                               ; preds = %11, %25
  %17 = phi i64 [ 0, %11 ], [ %26, %25 ]
  br i1 %12, label %18, label %25

18:                                               ; preds = %16
  %19 = getelementptr inbounds i32, i32* %7, i64 %17
  %20 = trunc i64 %17 to i32
  br label %28

21:                                               ; preds = %25, %4
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds i32, i32* %7, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !5
  ret i32 %24

25:                                               ; preds = %45, %16
  %26 = add nuw nsw i64 %17, 1
  %27 = icmp eq i64 %26, %14
  br i1 %27, label %21, label %16, !llvm.loop !9

28:                                               ; preds = %18, %45
  %29 = phi i64 [ 0, %18 ], [ %46, %45 ]
  %30 = getelementptr inbounds i32, i32* %3, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %17, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = sub nsw i32 %20, %31
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %7, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = getelementptr inbounds i32, i32* %2, i64 %29
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = add nsw i32 %40, %38
  %42 = load i32, i32* %19, align 4, !tbaa !5
  %43 = icmp slt i32 %42, %41
  %44 = select i1 %43, i32 %41, i32 %42
  store i32 %44, i32* %19, align 4, !tbaa !5
  br label %45

45:                                               ; preds = %28, %34
  %46 = add nuw nsw i64 %29, 1
  %47 = icmp eq i64 %46, %15
  br i1 %47, label %25, label %28, !llvm.loop !12
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED_reprocessed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
