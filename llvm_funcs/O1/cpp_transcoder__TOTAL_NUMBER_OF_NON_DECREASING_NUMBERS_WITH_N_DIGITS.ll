; ModuleID = 'llvm/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = mul nuw nsw i64 %3, 10
  %5 = alloca i64, i64 %4, align 16
  %6 = bitcast i64* %5 to i8*
  %7 = mul nuw nsw i64 %3, 80
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 %7, i1 false)
  %8 = getelementptr inbounds i64, i64* %5, i64 1
  br label %12

9:                                                ; preds = %12
  %10 = icmp slt i32 %0, 2
  %11 = zext i32 %2 to i64
  br label %18

12:                                               ; preds = %1, %12
  %13 = phi i64 [ 0, %1 ], [ %16, %12 ]
  %14 = mul nuw nsw i64 %13, %3
  %15 = getelementptr inbounds i64, i64* %8, i64 %14
  store i64 1, i64* %15, align 8, !tbaa !5
  %16 = add nuw nsw i64 %13, 1
  %17 = icmp eq i64 %16, 10
  br i1 %17, label %9, label %12, !llvm.loop !9

18:                                               ; preds = %9, %32
  %19 = phi i64 [ 0, %9 ], [ %33, %32 ]
  %20 = phi i64 [ 1, %9 ], [ %34, %32 ]
  br i1 %10, label %32, label %21

21:                                               ; preds = %18
  %22 = mul nuw nsw i64 %19, %3
  %23 = getelementptr inbounds i64, i64* %5, i64 %22
  br label %27

24:                                               ; preds = %32
  %25 = sext i32 %0 to i64
  %26 = getelementptr inbounds i64, i64* %5, i64 %25
  br label %50

27:                                               ; preds = %21, %36
  %28 = phi i64 [ 2, %21 ], [ %37, %36 ]
  %29 = add nsw i64 %28, -1
  %30 = getelementptr inbounds i64, i64* %23, i64 %28
  %31 = getelementptr inbounds i64, i64* %5, i64 %29
  br label %39

32:                                               ; preds = %36, %18
  %33 = add nuw nsw i64 %19, 1
  %34 = add nuw nsw i64 %20, 1
  %35 = icmp eq i64 %33, 10
  br i1 %35, label %24, label %18, !llvm.loop !12

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %28, 1
  %38 = icmp eq i64 %37, %11
  br i1 %38, label %32, label %27, !llvm.loop !13

39:                                               ; preds = %27, %39
  %40 = phi i64 [ 0, %27 ], [ %46, %39 ]
  %41 = mul nuw nsw i64 %40, %3
  %42 = getelementptr inbounds i64, i64* %31, i64 %41
  %43 = load i64, i64* %42, align 8, !tbaa !5
  %44 = load i64, i64* %30, align 8, !tbaa !5
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %30, align 8, !tbaa !5
  %46 = add nuw nsw i64 %40, 1
  %47 = icmp eq i64 %46, %20
  br i1 %47, label %36, label %39, !llvm.loop !14

48:                                               ; preds = %50
  %49 = trunc i64 %56 to i32
  ret i32 %49

50:                                               ; preds = %24, %50
  %51 = phi i64 [ 0, %24 ], [ %57, %50 ]
  %52 = phi i64 [ 0, %24 ], [ %56, %50 ]
  %53 = mul nuw nsw i64 %51, %3
  %54 = getelementptr inbounds i64, i64* %26, i64 %53
  %55 = load i64, i64* %54, align 8, !tbaa !5
  %56 = add nsw i64 %55, %52
  %57 = add nuw nsw i64 %51, 1
  %58 = icmp eq i64 %57, 10
  br i1 %58, label %48, label %50, !llvm.loop !15
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_reprocessed.cpp() #5 section ".text.startup" {
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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
