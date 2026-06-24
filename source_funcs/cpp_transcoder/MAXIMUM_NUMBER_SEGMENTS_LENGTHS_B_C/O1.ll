; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_NUMBER_SEGMENTS_LENGTHS_B_C/MAXIMUM_NUMBER_SEGMENTS_LENGTHS_B_C_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_NUMBER_SEGMENTS_LENGTHS_B_C/MAXIMUM_NUMBER_SEGMENTS_LENGTHS_B_C_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_NUMBER_SEGMENTS_LENGTHS_B_C_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = add nsw i32 %0, 1
  %6 = zext i32 %5 to i64
  %7 = alloca i32, i64 %6, align 16
  %8 = bitcast i32* %7 to i8*
  %9 = shl nuw nsw i64 %6, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 -1, i64 %9, i1 false)
  store i32 0, i32* %7, align 16, !tbaa !5
  %10 = icmp sgt i32 %0, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = sext i32 %1 to i64
  %13 = sext i32 %0 to i64
  %14 = sext i32 %2 to i64
  %15 = sext i32 %0 to i64
  %16 = sext i32 %3 to i64
  %17 = sext i32 %0 to i64
  %18 = zext i32 %0 to i64
  br label %23

19:                                               ; preds = %57, %4
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds i32, i32* %7, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !5
  ret i32 %22

23:                                               ; preds = %11, %57
  %24 = phi i64 [ 0, %11 ], [ %58, %57 ]
  %25 = getelementptr inbounds i32, i32* %7, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %57, label %28

28:                                               ; preds = %23
  %29 = add nsw i64 %24, %12
  %30 = icmp sgt i64 %29, %13
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = add nsw i32 %26, 1
  %33 = getelementptr inbounds i32, i32* %7, i64 %29
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = icmp slt i32 %32, %34
  %36 = select i1 %35, i32 %34, i32 %32
  store i32 %36, i32* %33, align 4, !tbaa !5
  br label %37

37:                                               ; preds = %31, %28
  %38 = add nsw i64 %24, %14
  %39 = icmp sgt i64 %38, %15
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %25, align 4, !tbaa !5
  %42 = add nsw i32 %41, 1
  %43 = getelementptr inbounds i32, i32* %7, i64 %38
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = icmp slt i32 %42, %44
  %46 = select i1 %45, i32 %44, i32 %42
  store i32 %46, i32* %43, align 4, !tbaa !5
  br label %47

47:                                               ; preds = %40, %37
  %48 = add nsw i64 %24, %16
  %49 = icmp sgt i64 %48, %17
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %25, align 4, !tbaa !5
  %52 = add nsw i32 %51, 1
  %53 = getelementptr inbounds i32, i32* %7, i64 %48
  %54 = load i32, i32* %53, align 4, !tbaa !5
  %55 = icmp slt i32 %52, %54
  %56 = select i1 %55, i32 %54, i32 %52
  store i32 %56, i32* %53, align 4, !tbaa !5
  br label %57

57:                                               ; preds = %23, %50, %47
  %58 = add nuw nsw i64 %24, 1
  %59 = icmp eq i64 %58, %18
  br i1 %59, label %19, label %23, !llvm.loop !9
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_NUMBER_SEGMENTS_LENGTHS_B_C_reprocessed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
