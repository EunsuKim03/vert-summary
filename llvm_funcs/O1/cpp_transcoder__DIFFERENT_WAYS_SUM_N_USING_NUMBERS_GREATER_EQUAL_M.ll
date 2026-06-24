; ModuleID = 'llvm/cpp_transcoder/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add nsw i32 %0, 2
  %4 = zext i32 %3 to i64
  %5 = mul nuw i64 %4, %4
  %6 = alloca i32, i64 %5, align 16
  %7 = bitcast i32* %6 to i8*
  %8 = shl nuw i64 %5, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 %8, i1 false)
  %9 = add nsw i32 %0, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %6, i64 %10
  store i32 1, i32* %11, align 4, !tbaa !5
  %12 = icmp slt i32 %0, %1
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = icmp slt i32 %0, 0
  %15 = add i32 %0, 1
  %16 = sext i32 %0 to i64
  %17 = sext i32 %1 to i64
  %18 = zext i32 %15 to i64
  br label %19

19:                                               ; preds = %13, %31
  %20 = phi i64 [ %16, %13 ], [ %32, %31 ]
  br i1 %14, label %31, label %21

21:                                               ; preds = %19
  %22 = add nsw i64 %20, 1
  %23 = getelementptr inbounds i32, i32* %6, i64 %20
  br label %34

24:                                               ; preds = %31, %2
  %25 = sext i32 %0 to i64
  %26 = mul nsw i64 %4, %25
  %27 = getelementptr inbounds i32, i32* %6, i64 %26
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !5
  ret i32 %30

31:                                               ; preds = %48, %19
  %32 = add nsw i64 %20, -1
  %33 = icmp sgt i64 %20, %17
  br i1 %33, label %19, label %24, !llvm.loop !9

34:                                               ; preds = %21, %48
  %35 = phi i64 [ 0, %21 ], [ %49, %48 ]
  %36 = mul nuw nsw i64 %35, %4
  %37 = getelementptr inbounds i32, i32* %6, i64 %36
  %38 = getelementptr inbounds i32, i32* %37, i64 %22
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = getelementptr inbounds i32, i32* %37, i64 %20
  store i32 %39, i32* %40, align 4, !tbaa !5
  %41 = sub nsw i64 %35, %20
  %42 = icmp sgt i64 %41, -1
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = mul nsw i64 %41, %4
  %45 = getelementptr inbounds i32, i32* %23, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = add nsw i32 %46, %39
  store i32 %47, i32* %40, align 4, !tbaa !5
  br label %48

48:                                               ; preds = %34, %43
  %49 = add nuw nsw i64 %35, 1
  %50 = icmp eq i64 %49, %18
  br i1 %50, label %31, label %34, !llvm.loop !12
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_reprocessed.cpp() #5 section ".text.startup" {
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
!12 = distinct !{!12, !10, !11}
