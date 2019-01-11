<?php
declare(strict_types=1);
namespace App\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;

/**
 * Api Controller
 */
class ApiController
{
    /**
     * Example route
     *
     * @Route("/")
     * @param Request $request
     * @return Response
     */
    public function index(Request $request): JsonResponse
    {
        return new JsonResponse([
            'status' => JsonRespone::HTTP_OK
        ]);
    }
}
