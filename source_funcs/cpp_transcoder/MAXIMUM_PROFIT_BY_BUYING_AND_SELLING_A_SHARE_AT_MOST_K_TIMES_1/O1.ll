; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_reprocessed.cpp, i8* null }]

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
  br i1 %26, label %45, label %27

27:                                               ; preds = %25
  %28 = icmp sgt i32 %1, 1
  %29 = add i32 %2, 1
  %30 = zext i32 %29 to i64
  %31 = zext i32 %1 to i64
  br label %32

32:                                               ; preds = %27, %53
  %33 = phi i64 [ 0, %27 ], [ %56, %53 ]
  %34 = phi i64 [ 1, %27 ], [ %54, %53 ]
  br i1 %28, label %35, label %53

35:                                               ; preds = %32
  %36 = mul i64 %33, %7
  %37 = add i64 %36, %7
  %38 = getelementptr i32, i32* %9, i64 %37
  %39 = add nsw i64 %34, -1
  %40 = mul nuw nsw i64 %39, %7
  %41 = getelementptr inbounds i32, i32* %9, i64 %40
  %42 = mul nuw nsw i64 %34, %7
  %43 = getelementptr inbounds i32, i32* %9, i64 %42
  %44 = load i32, i32* %38, align 4
  br label %57

45:                                               ; preds = %53, %25
  %46 = sext i32 %2 to i64
  %47 = mul nsw i64 %46, %7
  %48 = getelementptr inbounds i32, i32* %9, i64 %47
  %49 = add nsw i32 %1, -1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !5
  ret i32 %52

53:                                               ; preds = %57, %32
  %54 = add nuw nsw i64 %34, 1
  %55 = icmp eq i64 %54, %30
  %56 = add i64 %33, 1
  br i1 %55, label %45, label %32, !llvm.loop !12

57:                                               ; preds = %35, %57
  %58 = phi i32 [ %44, %35 ], [ %73, %57 ]
  %59 = phi i64 [ 1, %35 ], [ %75, %57 ]
  %60 = phi i32 [ -2147483648, %35 ], [ %68, %57 ]
  %61 = add nsw i64 %59, -1
  %62 = getelementptr inbounds i32, i32* %41, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !5
  %64 = getelementptr inbounds i32, i32* %0, i64 %61
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %66 = sub nsw i32 %63, %65
  %67 = icmp slt i32 %60, %66
  %68 = select i1 %67, i32 %66, i32 %60
  %69 = getelementptr inbounds i32, i32* %0, i64 %59
  %70 = load i32, i32* %69, align 4, !tbaa !5
  %71 = add nsw i32 %68, %70
  %72 = icmp slt i32 %58, %71
  %73 = select i1 %72, i32 %71, i32 %58
  %74 = getelementptr inbounds i32, i32* %43, i64 %59
  store i32 %73, i32* %74, align 4, !tbaa !5
  %75 = add nuw nsw i64 %59, 1
  %76 = icmp eq i64 %75, %31
  br i1 %76, label %53, label %57, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_reprocessed.cpp() #4 section ".text.startup" {
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
