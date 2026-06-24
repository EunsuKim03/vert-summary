; ModuleID = 'llvm/cpp_transcoder/SUM_LARGEST_PRIME_FACTOR_NUMBER_LESS_EQUAL_N/SUM_LARGEST_PRIME_FACTOR_NUMBER_LESS_EQUAL_N_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SUM_LARGEST_PRIME_FACTOR_NUMBER_LESS_EQUAL_N/SUM_LARGEST_PRIME_FACTOR_NUMBER_LESS_EQUAL_N_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_LARGEST_PRIME_FACTOR_NUMBER_LESS_EQUAL_N_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = bitcast i32* %4 to i8*
  %6 = shl nuw nsw i64 %3, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 %6, i1 false)
  %7 = icmp slt i32 %0, 4
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = sdiv i32 %0, 2
  %10 = sext i32 %0 to i64
  %11 = call i32 @llvm.smax.i32(i32 %9, i32 2)
  %12 = add nuw nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  br label %19

14:                                               ; preds = %36, %1
  %15 = icmp slt i32 %0, 2
  br i1 %15, label %40, label %16

16:                                               ; preds = %14
  %17 = add nsw i32 %0, 1
  %18 = zext i32 %17 to i64
  br label %42

19:                                               ; preds = %8, %36
  %20 = phi i64 [ 2, %8 ], [ %37, %36 ]
  %21 = phi i64 [ 4, %8 ], [ %38, %36 ]
  %22 = getelementptr inbounds i32, i32* %4, i64 %20
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = icmp ne i32 %23, 0
  %25 = shl nuw nsw i64 %20, 1
  %26 = icmp sgt i64 %25, %10
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %19
  %29 = trunc i64 %20 to i32
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ %33, %30 ], [ %21, %28 ]
  %32 = getelementptr inbounds i32, i32* %4, i64 %31
  store i32 %29, i32* %32, align 4, !tbaa !5
  %33 = add nuw nsw i64 %31, %20
  %34 = trunc i64 %33 to i32
  %35 = icmp sgt i32 %34, %0
  br i1 %35, label %36, label %30, !llvm.loop !9

36:                                               ; preds = %30, %19
  %37 = add nuw nsw i64 %20, 1
  %38 = add nuw nsw i64 %21, 2
  %39 = icmp eq i64 %37, %13
  br i1 %39, label %14, label %19, !llvm.loop !12

40:                                               ; preds = %42, %14
  %41 = phi i32 [ 0, %14 ], [ %50, %42 ]
  ret i32 %41

42:                                               ; preds = %16, %42
  %43 = phi i64 [ 2, %16 ], [ %51, %42 ]
  %44 = phi i32 [ 0, %16 ], [ %50, %42 ]
  %45 = getelementptr inbounds i32, i32* %4, i64 %43
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = icmp eq i32 %46, 0
  %48 = trunc i64 %43 to i32
  %49 = select i1 %47, i32 %48, i32 %46
  %50 = add nsw i32 %49, %44
  %51 = add nuw nsw i64 %43, 1
  %52 = icmp eq i64 %51, %18
  br i1 %52, label %40, label %42, !llvm.loop !13
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_LARGEST_PRIME_FACTOR_NUMBER_LESS_EQUAL_N_reprocessed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
