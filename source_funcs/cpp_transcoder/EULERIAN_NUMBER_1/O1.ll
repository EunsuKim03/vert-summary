; ModuleID = 'llvm/cpp_transcoder/EULERIAN_NUMBER_1/EULERIAN_NUMBER_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/EULERIAN_NUMBER_1/EULERIAN_NUMBER_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_EULERIAN_NUMBER_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add nsw i32 %0, 1
  %4 = zext i32 %3 to i64
  %5 = add i32 %1, 1
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %6, %4
  %8 = alloca i32, i64 %7, align 16
  %9 = bitcast i32* %8 to i8*
  %10 = shl nuw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = icmp slt i32 %0, 1
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = icmp slt i32 %1, 0
  %14 = add i32 %0, 1
  %15 = zext i32 %14 to i64
  %16 = zext i32 %5 to i64
  br label %17

17:                                               ; preds = %12, %34
  %18 = phi i64 [ 1, %12 ], [ %35, %34 ]
  br i1 %13, label %34, label %19

19:                                               ; preds = %17
  %20 = add nsw i64 %18, -1
  %21 = mul nuw nsw i64 %20, %6
  %22 = getelementptr inbounds i32, i32* %8, i64 %21
  %23 = mul nuw nsw i64 %18, %6
  %24 = getelementptr inbounds i32, i32* %8, i64 %23
  %25 = mul nuw nsw i64 %18, %6
  %26 = getelementptr inbounds i32, i32* %8, i64 %25
  br label %37

27:                                               ; preds = %34, %2
  %28 = sext i32 %0 to i64
  %29 = mul nsw i64 %6, %28
  %30 = getelementptr inbounds i32, i32* %8, i64 %29
  %31 = sext i32 %1 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  ret i32 %33

34:                                               ; preds = %57, %17
  %35 = add nuw nsw i64 %18, 1
  %36 = icmp eq i64 %35, %15
  br i1 %36, label %27, label %17, !llvm.loop !9

37:                                               ; preds = %19, %57
  %38 = phi i64 [ 0, %19 ], [ %58, %57 ]
  %39 = icmp ugt i64 %18, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = icmp eq i64 %38, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  store i32 1, i32* %26, align 4, !tbaa !5
  br label %57

43:                                               ; preds = %40
  %44 = sub nsw i64 %18, %38
  %45 = add nsw i64 %38, -1
  %46 = getelementptr inbounds i32, i32* %22, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = trunc i64 %44 to i32
  %49 = mul nsw i32 %47, %48
  %50 = getelementptr inbounds i32, i32* %22, i64 %38
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = trunc i64 %38 to i32
  %53 = add i32 %52, 1
  %54 = mul nsw i32 %51, %53
  %55 = add nsw i32 %54, %49
  %56 = getelementptr inbounds i32, i32* %24, i64 %38
  store i32 %55, i32* %56, align 4, !tbaa !5
  br label %57

57:                                               ; preds = %37, %43, %42
  %58 = add nuw nsw i64 %38, 1
  %59 = icmp eq i64 %58, %16
  br i1 %59, label %34, label %37, !llvm.loop !12
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_EULERIAN_NUMBER_1_reprocessed.cpp() #5 section ".text.startup" {
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
