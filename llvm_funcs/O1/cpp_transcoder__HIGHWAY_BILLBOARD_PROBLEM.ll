; ModuleID = 'llvm/cpp_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_HIGHWAY_BILLBOARD_PROBLEM_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldiPiS_ii(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = add nsw i32 %0, 1
  %7 = zext i32 %6 to i64
  %8 = alloca i32, i64 %7, align 16
  %9 = bitcast i32* %8 to i8*
  %10 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = icmp slt i32 %0, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %5
  %13 = xor i32 %4, -1
  %14 = sext i32 %4 to i64
  %15 = add i32 %0, 1
  %16 = zext i32 %15 to i64
  br label %21

17:                                               ; preds = %69, %5
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds i32, i32* %8, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  ret i32 %20

21:                                               ; preds = %12, %69
  %22 = phi i64 [ 1, %12 ], [ %71, %69 ]
  %23 = phi i32 [ 0, %12 ], [ %70, %69 ]
  %24 = icmp slt i32 %23, %3
  br i1 %24, label %25, label %64

25:                                               ; preds = %21
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds i32, i32* %1, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = zext i32 %28 to i64
  %30 = icmp eq i64 %22, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = add nsw i64 %22, -1
  %33 = getelementptr inbounds i32, i32* %8, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = getelementptr inbounds i32, i32* %8, i64 %22
  store i32 %34, i32* %35, align 4, !tbaa !5
  br label %69

36:                                               ; preds = %25
  %37 = icmp sgt i64 %22, %14
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = add nsw i64 %22, -1
  %40 = getelementptr inbounds i32, i32* %8, i64 %39
  %41 = getelementptr inbounds i32, i32* %2, i64 %26
  %42 = load i32, i32* %40, align 4
  %43 = load i32, i32* %41, align 4
  %44 = icmp slt i32 %42, %43
  %45 = select i1 %44, i32 %43, i32 %42
  br label %60

46:                                               ; preds = %36
  %47 = trunc i64 %22 to i32
  %48 = add i32 %47, %13
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %8, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = getelementptr inbounds i32, i32* %2, i64 %26
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = add nsw i32 %53, %51
  %55 = add nsw i64 %22, -1
  %56 = getelementptr inbounds i32, i32* %8, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = icmp slt i32 %54, %57
  %59 = select i1 %58, i32 %57, i32 %54
  br label %60

60:                                               ; preds = %46, %38
  %61 = phi i32 [ %59, %46 ], [ %45, %38 ]
  %62 = getelementptr inbounds i32, i32* %8, i64 %22
  store i32 %61, i32* %62, align 4, !tbaa !5
  %63 = add nsw i32 %23, 1
  br label %69

64:                                               ; preds = %21
  %65 = add nsw i64 %22, -1
  %66 = getelementptr inbounds i32, i32* %8, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !5
  %68 = getelementptr inbounds i32, i32* %8, i64 %22
  store i32 %67, i32* %68, align 4, !tbaa !5
  br label %69

69:                                               ; preds = %64, %60, %31
  %70 = phi i32 [ %23, %31 ], [ %63, %60 ], [ %23, %64 ]
  %71 = add nuw nsw i64 %22, 1
  %72 = icmp eq i64 %71, %16
  br i1 %72, label %17, label %21, !llvm.loop !9
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_HIGHWAY_BILLBOARD_PROBLEM_reprocessed.cpp() #5 section ".text.startup" {
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
