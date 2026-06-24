; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = add nsw i32 %2, 1
  %5 = zext i32 %4 to i64
  %6 = add nsw i32 %1, 1
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %5, %7
  %9 = alloca i32, i64 %8, align 16
  %10 = bitcast i32* %9 to i8*
  %11 = icmp slt i32 %2, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = add i32 %2, 1
  %14 = zext i32 %13 to i64
  br label %19

15:                                               ; preds = %19, %3
  %16 = icmp slt i32 %1, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %18, i1 false), !tbaa !5
  br label %25

19:                                               ; preds = %12, %19
  %20 = phi i64 [ 0, %12 ], [ %23, %19 ]
  %21 = mul nuw nsw i64 %20, %7
  %22 = getelementptr inbounds i32, i32* %9, i64 %21
  store i32 0, i32* %22, align 4, !tbaa !5
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %14
  br i1 %24, label %15, label %19, !llvm.loop !9

25:                                               ; preds = %17, %15
  %26 = icmp slt i32 %2, 1
  br i1 %26, label %40, label %27

27:                                               ; preds = %25
  %28 = icmp sgt i32 %1, 1
  %29 = add i32 %2, 1
  %30 = zext i32 %29 to i64
  %31 = zext i32 %1 to i64
  br label %32

32:                                               ; preds = %27, %52
  %33 = phi i64 [ 1, %27 ], [ %53, %52 ]
  br i1 %28, label %34, label %52

34:                                               ; preds = %32
  %35 = add nsw i64 %33, -1
  %36 = mul nuw nsw i64 %35, %7
  %37 = getelementptr inbounds i32, i32* %9, i64 %36
  %38 = mul nuw nsw i64 %33, %7
  %39 = getelementptr inbounds i32, i32* %9, i64 %38
  br label %48

40:                                               ; preds = %52, %25
  %41 = sext i32 %2 to i64
  %42 = mul nsw i64 %41, %7
  %43 = getelementptr inbounds i32, i32* %9, i64 %42
  %44 = add nsw i32 %1, -1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !5
  ret i32 %47

48:                                               ; preds = %34, %55
  %49 = phi i64 [ 1, %34 ], [ %62, %55 ]
  %50 = getelementptr inbounds i32, i32* %0, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !5
  br label %64

52:                                               ; preds = %55, %32
  %53 = add nuw nsw i64 %33, 1
  %54 = icmp eq i64 %53, %30
  br i1 %54, label %40, label %32, !llvm.loop !12

55:                                               ; preds = %64
  %56 = add nsw i64 %49, -1
  %57 = getelementptr inbounds i32, i32* %39, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %59 = icmp slt i32 %58, %74
  %60 = select i1 %59, i32 %74, i32 %58
  %61 = getelementptr inbounds i32, i32* %39, i64 %49
  store i32 %60, i32* %61, align 4, !tbaa !5
  %62 = add nuw nsw i64 %49, 1
  %63 = icmp eq i64 %62, %31
  br i1 %63, label %52, label %48, !llvm.loop !13

64:                                               ; preds = %48, %64
  %65 = phi i64 [ 0, %48 ], [ %75, %64 ]
  %66 = phi i32 [ -2147483648, %48 ], [ %74, %64 ]
  %67 = getelementptr inbounds i32, i32* %0, i64 %65
  %68 = load i32, i32* %67, align 4, !tbaa !5
  %69 = sub nsw i32 %51, %68
  %70 = getelementptr inbounds i32, i32* %37, i64 %65
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = add nsw i32 %69, %71
  %73 = icmp slt i32 %66, %72
  %74 = select i1 %73, i32 %72, i32 %66
  %75 = add nuw nsw i64 %65, 1
  %76 = icmp eq i64 %75, %49
  br i1 %76, label %55, label %64, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_reprocessed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
